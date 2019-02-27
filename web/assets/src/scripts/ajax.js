document.addEventListener('DOMContentLoaded', () => {

    if (navigator.geolocation.getCurrentPosition(
        success => {

    }, error => {
        window.location.reload();
    }));
});