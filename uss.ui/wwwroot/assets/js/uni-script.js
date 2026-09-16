/* =========================================================
       NAVBAR SCROLL EFFECT
    ========================================================= */

    const navbar = document.getElementById('mainNavbar');
    const backToTop = document.getElementById('backToTop');

    window.addEventListener('scroll', function () {

        if (window.scrollY > 60) {
            navbar.classList.add('scrolled');
            backToTop.classList.add('show');
        } else {
            navbar.classList.remove('scrolled');
            backToTop.classList.remove('show');
        }

    });


    /* =========================================================
       BACK TO TOP
    ========================================================= */

    backToTop.addEventListener('click', function () {

        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });

    });


    /* =========================================================
       CLOSE MOBILE NAV AFTER CLICK
    ========================================================= */

    document.querySelectorAll('.navbar-nav .nav-link').forEach(function (link) {

        link.addEventListener('click', function () {

            const navbarCollapse =
                document.getElementById('navbarNav');

            if (navbarCollapse.classList.contains('show')) {

                const bsCollapse =
                    bootstrap.Collapse.getInstance(navbarCollapse);

                if (bsCollapse) {
                    bsCollapse.hide();
                }

            }

        });

    });


    /* =========================================================
       SCROLL REVEAL
    ========================================================= */

    const revealElements =
        document.querySelectorAll('.reveal');

    const revealObserver =
        new IntersectionObserver(function (entries) {

            entries.forEach(function (entry) {

                if (entry.isIntersecting) {

                    entry.target.classList.add('active');

                    revealObserver.unobserve(entry.target);

                }

            });

        }, {
            threshold: 0.12
        });


    revealElements.forEach(function (element) {

        revealObserver.observe(element);

    });


    /* =========================================================
       ANIMATED COUNTERS
    ========================================================= */

    const counters =
        document.querySelectorAll('.counter');

    let countersStarted = false;


    function startCounters() {

        if (countersStarted) {
            return;
        }

        countersStarted = true;

        counters.forEach(function (counter) {

            const target =
                parseInt(counter.getAttribute('data-target'));

            let current = 0;

            const increment =
                Math.max(1, Math.ceil(target / 60));

            const timer =
                setInterval(function () {

                    current += increment;

                    if (current >= target) {

                        counter.textContent = target;

                        clearInterval(timer);

                    } else {

                        counter.textContent = current;

                    }

                }, 25);

        });

    }


    const statsSection =
        document.querySelector('.stats-section');


    const statsObserver =
        new IntersectionObserver(function (entries) {

            if (entries[0].isIntersecting) {

                startCounters();

                statsObserver.disconnect();

            }

        }, {
            threshold: 0.3
        });


    statsObserver.observe(statsSection);


    /* =========================================================
       CONTACT FORM
    ========================================================= */

    const contactForm =
        document.getElementById('contactForm');

    const formMessage =
        document.getElementById('formMessage');


    contactForm.addEventListener('submit', function (event) {

        event.preventDefault();

        formMessage.classList.remove('d-none');

        contactForm.reset();

        setTimeout(function () {

            formMessage.classList.add('d-none');

        }, 6000);

    });


    /* =========================================================
       CURRENT YEAR
    ========================================================= */

    document.getElementById('currentYear').textContent =
        new Date().getFullYear();


    /* =========================================================
       SUBTLE MOUSE PARALLAX ON HERO
    ========================================================= */

    const heroVisual =
        document.querySelector('.hero-visual');


    document.addEventListener('mousemove', function (event) {

        if (window.innerWidth < 992) {
            return;
        }

        const x =
            (window.innerWidth / 2 - event.clientX) / 80;

        const y =
            (window.innerHeight / 2 - event.clientY) / 80;

        heroVisual.style.transform =
            `translate(${x}px, ${y}px)`;

    });


    /* =========================================================
       ACTIVE NAVIGATION
    ========================================================= */

    const sections =
        document.querySelectorAll('section[id]');

    const navLinks =
        document.querySelectorAll('.navbar-nav .nav-link');


    window.addEventListener('scroll', function () {

        let current = '';

        sections.forEach(function (section) {

            const sectionTop =
                section.offsetTop - 150;

            if (window.scrollY >= sectionTop) {
                current = section.getAttribute('id');
            }

        });


        navLinks.forEach(function (link) {

            link.classList.remove('active');

            if (
                link.getAttribute('href') === '#' + current
            ) {

                link.classList.add('active');

            }

        });

    });