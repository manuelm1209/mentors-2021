const url_s3 = "https://mentors-day-assets.s3-us-west-2.amazonaws.com/assets/";

$(document).ready(function(){
    loadVideo();
    setInterval(function(){
        change_video();        
    }, 1000);
});

function featured_allies(){
    let swipwer = new Swiper('.swiper-container', {
        slidesPerView: 1,
        spaceBetween: 10,
        loop: true,
        speed: 1000,
        breakpoints: {
            425: {
                slidesPerView: 2,
            },
            650: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 4,
                spaceBetween: 30,
            },
            1024: {
                slidesPerView: 5,
                spaceBetween: 48,
            },
            1440: {
                slidesPerView: 6
            }
        },
        autoplay: {
            delay: 3000,
            disableOnInteraction: false
        }
    });
};

function change_video(){
    let today = new Date();
    let hour = today.getHours();
    let minutes = today.getMinutes();
    let seconds = today.getSeconds();
    let day = today.getDate();

    let start_date = getTime("Wed Sep 2 2020 08:10:00 GMT-0500");

    let url = window.location.origin;

    let video = $('#main-video-section');

    if( day === 2 && hour === 12 && minutes === 20  && seconds === 0){
        $('#nps_form').removeClass('hidden');
    }

    if( day === 2 && hour === 8 && minutes === 02 && seconds === 00 ){
        video.removeAttr('loop');
        $('#main-video-section').attr('controls', '');
        $('#main-video-section').attr('src', url_s3 + 'videos/VideoIntroductorioDiaDelEventoMentorsDay.mp4');
        video.on('ended', function(){
            video.removeAttr('autoplay');
            video.attr('poster', url_s3 + 'images/placeholder_mentors.jpg');
            video[0].load();
        });
    }

    if( day === 2 && hour === 9 && minutes === 00 && seconds === 0){
        video.removeAttr('controls');
        video.attr('muted', '');
        video.attr('loop', '');
        video.attr('autoplay', '');
        video.attr('src', url + '/public/videos/LoopLogos_horarios.mp4');
    }

    if(start_date.time > 0){
        $('#days').html('<p class="clock-card"><span class="clock-number">' + start_date.days + '</span><br><span class="label-clock">DD</span></p>');
        $('#hours').html('<p class="clock-card"><span class="clock-number">' + start_date.hours + '</span><br><span class="label-clock">HH</span></p>');
        $('#minutes').html('<p class="clock-card"><span class="clock-number">' + start_date.minutes + '</span><br><span class="label-clock">MM</span></p>');
        $('#seconds').html('<p class="clock-card"><span class="clock-number">' + start_date.seconds + '</span><br><span class="label-clock">SS</span></p>');    
    }else{
        $('#clock-container').css('display', 'none');
    }
    
};

function getTime(dateTo){
    let now = new Date(),
        time = (new Date(dateTo) - now + 1000) / 1000,
        seconds = ('0' + Math.floor(time % 60)).slice(-2),
        minutes = ('0' + Math.floor(time / 60 % 60)).slice(-2),
        hours = ('0' + Math.floor(time / 3600 % 24)).slice(-2),
        days = Math.floor(time / (3600 * 24));

    return {
        seconds,
        minutes,
        hours,
        days,
        time
    }
};

function loadVideo(){
    let today = new Date();
    let hour = today.getHours();
    let minutes = today.getMinutes();
    let day = today.getDate();

    let url = window.location.origin;

    video = $('#main-video-section');

    if(day === 2 && hour === 8 && (minutes >= 02 && minutes <= 59)){
        video.removeAttr('loop');
        video.attr('controls', '');
        $('#main-video-section').attr('src', url_s3 + 'videos/VideoIntroductorioDiaDelEventoMentorsDay.mp4');
        video.on('ended', function(){
            video.removeAttr('autoplay');
            video.attr('poster', url_s3 + 'images/placeholder_mentors.jpg');
            video[0].load();
        });
    }

    if( day === 2 && hour >= 12 && minutes >= 00){
        $('#nps_form').removeClass('hidden');
    }
}

featured_allies();