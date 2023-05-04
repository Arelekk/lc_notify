$(function () {
    var sound = new Audio('sound.mp3');
    sound.volume = 0.8;
    window.addEventListener('message', function (event) {
        if (event.data.action == 'open') {
            var number = Math.floor((Math.random() * 1000) + 1);
            $('.box').append(`
            <div class="container-${number}">
                <div class="notify_main-${number}">
                    <div class="notify_title-${number}"></div>
                    <div class="notify_text-${number}">${event.data.message}</div>
                </div>
            </div>`)
            $(`.container-${number}`).css({
                "width": "280px",
                "margin": "0 0 15px -150px",
                "border-radius": "10px"
            })
            $('.notify_main-'+number).addClass('main')
            $('.notify_text-'+number).css({
                "font-size": "14px"
            })
            if (event.data.type == 'notify') {
                $(`.notify_title-${number}`).html(event.data.title).css({
                    "font-size": "16px",
                    "font-weight": "600"
                })
                $(`.container-${number}`).addClass('notify border bg')
                sound.play();
            }
            anime({
                targets: `.container-${number}`,
                translateX: -50,
                duration: 1000,
                easing: 'spring(2, 60, 110, 5)',
            })
            setTimeout(function () {
                anime({
                    targets: `.container-${number}`,
                    translateX: 620,
                    duration: 1000,
                    easing: 'spring(2, 70, 90, 0)'
                })
                setTimeout(function () {
                    $(`.container-${number}`).remove()
                }, 750)
            }, event.data.time)
        }
    })
})