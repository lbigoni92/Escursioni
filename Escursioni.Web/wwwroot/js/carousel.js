(function () {
    document.querySelectorAll('[data-carousel]').forEach(function (carousel) {
        var track = carousel.querySelector('[data-carousel-track]');
        var slides = track ? track.querySelectorAll('[data-carousel-slide]') : [];
        var dotsContainer = carousel.parentElement.querySelector('[data-carousel-dots]');
        var dots = dotsContainer ? dotsContainer.querySelectorAll('[data-carousel-dot]') : [];
        // Con molte foto al posto dei pallini c'è un contatore "3 / 22"
        var counter = carousel.parentElement.querySelector('[data-carousel-count]');
        var prevBtn = carousel.querySelector('[data-carousel-prev]');
        var nextBtn = carousel.querySelector('[data-carousel-next]');
        var current = 0;

        if (slides.length === 0) return;

        function goTo(index) {
            if (index < 0) index = slides.length - 1;
            if (index >= slides.length) index = 0;
            slides[current].classList.remove('is-active');
            if (dots.length > current) dots[current].classList.remove('is-active');
            current = index;
            slides[current].classList.add('is-active');
            if (dots.length > current) dots[current].classList.add('is-active');
            if (counter) counter.textContent = (current + 1) + ' / ' + slides.length;
        }

        if (prevBtn) prevBtn.addEventListener('click', function () { goTo(current - 1); });
        if (nextBtn) nextBtn.addEventListener('click', function () { goTo(current + 1); });

        dots.forEach(function (dot) {
            dot.addEventListener('click', function () {
                var idx = parseInt(dot.getAttribute('data-slide-index'), 10);
                if (!isNaN(idx)) goTo(idx);
            });
        });

        // Keyboard navigation
        carousel.setAttribute('tabindex', '0');
        carousel.addEventListener('keydown', function (e) {
            if (e.key === 'ArrowLeft') { goTo(current - 1); e.preventDefault(); }
            if (e.key === 'ArrowRight') { goTo(current + 1); e.preventDefault(); }
        });

        // Touch/swipe support
        var touchStartX = 0;
        carousel.addEventListener('touchstart', function (e) {
            touchStartX = e.changedTouches[0].clientX;
        }, { passive: true });
        carousel.addEventListener('touchend', function (e) {
            var diff = e.changedTouches[0].clientX - touchStartX;
            if (Math.abs(diff) > 50) {
                goTo(diff > 0 ? current - 1 : current + 1);
            }
        }, { passive: true });
    });
})();
