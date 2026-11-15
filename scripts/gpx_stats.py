"""Statistiche ricavate dal file GPX di un'escursione: distanza, dislivello, partenza/arrivo, tempi.

Uso: python -I scripts/gpx_stats.py <wikiloc_id> [<wikiloc_id> ...]
"""
import math
import os
import re
import sys
from datetime import datetime

sys.stdout.reconfigure(encoding="utf-8")
GPX = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "Escursioni.Web", "wwwroot", "media", "gpx")


def hav(a, b):
    r = 6371.0
    la1, lo1, la2, lo2 = map(math.radians, (a[0], a[1], b[0], b[1]))
    h = math.sin((la2 - la1) / 2) ** 2 + math.cos(la1) * math.cos(la2) * math.sin((lo2 - lo1) / 2) ** 2
    return 2 * r * math.asin(math.sqrt(h))


def stats(wid):
    txt = open(os.path.join(GPX, f"{wid}.gpx"), encoding="utf-8", errors="ignore").read()
    pts = []
    for m in re.finditer(r'<trkpt lat="([-\d.]+)" lon="([-\d.]+)">(.*?)</trkpt>', txt, re.S):
        body = m.group(3)
        ele = re.search(r"<ele>([-\d.]+)</ele>", body)
        tm = re.search(r"<time>([^<]+)</time>", body)
        pts.append((float(m.group(1)), float(m.group(2)), float(ele.group(1)) if ele else None,
                    datetime.fromisoformat(tm.group(1).replace("Z", "+00:00")) if tm else None))
    dist = 0.0
    cum = [0.0]
    for i in range(1, len(pts)):
        dist += hav(pts[i - 1], pts[i])
        cum.append(dist)
    # dislivello con soglia di 5 m per filtrare il rumore
    gain, ref = 0.0, None
    for p in pts:
        if p[2] is None:
            continue
        if ref is None:
            ref = p[2]
        elif p[2] - ref >= 5:
            gain += p[2] - ref
            ref = p[2]
        elif ref - p[2] >= 5:
            ref = p[2]
    eles = [p[2] for p in pts if p[2] is not None]
    t0 = next((p[3] for p in pts if p[3]), None)
    t1 = next((p[3] for p in reversed(pts) if p[3]), None)
    return {
        "punti": len(pts),
        "km": round(dist, 2),
        "dislivello": round(gain),
        "quota": (round(min(eles)), round(max(eles))) if eles else None,
        "inizio_fine_km": round(hav(pts[0], pts[-1]), 2) if pts else None,
        "durata_h": round((t1 - t0).total_seconds() / 3600, 2) if t0 and t1 else None,
        "pts": pts,
        "cum": cum,
    }


if __name__ == "__main__":
    for wid in sys.argv[1:]:
        s = stats(wid)
        print(wid, {k: v for k, v in s.items() if k not in ("pts", "cum")})
