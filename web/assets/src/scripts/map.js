document.addEventListener('DOMContentLoaded', () => {
    const options = { enableHighAccuracy: true, zoom:15, timeout: 1500, maximumAge: 0 };
    const map = L.map('map', {minZoom: 5,
        maxZoom: 20});
    /*const markers = [
        ["marker1",43.5929881,1.4494229],
        ["marker2",43.6103199,1.4238506],
        ["marker3",43.6864497,1.3722365],
        ["marker4",43.6841172,1.3102869],
        ["marker5",43.7077232,1.346115],
        ["marker6",43.676758,1.4198882],
        ["marker7",43.6605848,1.4169271],
        ["marker8",43.6685991,1.4066492],
        ["marker9",43.6582622,1.3677737]
    ];*/


    initMap(map);

    function initMap(map) {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(
                pos => {
                    const xhr = new XMLHttpRequest();
                    const method = 'POST';
                    const url = '/Covoit_war_exploded/homeloggedpassenger';
                    const data = `latitude=${pos.coords.latitude}&longitude=${pos.coords.longitude}`;

                    xhr.open(method, url, true);
                    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xhr.setRequestHeader("Content-length", data.length);
                    //xhr.setRequestHeader("Content-Type", "application/json");
                    xhr.onreadystatechange = function () {
                        if(xhr.readyState === 4 && xhr.status === 200) {
                            addMarkers(JSON.parse(this.response))
                        }
                    };

                    xhr.send(data.toString());
                    map.setView([pos.coords.latitude, pos.coords.longitude], 15);
                    const iconCar = L.icon({
                        iconUrl: 'assets/dist/images/street-view.png',
                        //shadowUrl: 'leaf-shadow.png',
                        iconSize:     [64, 64],
                        shadowSize:   [64, 64],
                        iconAnchor:   [64, 64],
                        //shadowAnchor: [4, 62],
                        //popupAnchor:  [-3, -76]
                    });
                    const marker = L.marker([pos.coords.latitude, pos.coords.longitude], {icon: iconCar}).addTo(map);
                    //marker.bounce({duration: 500, height: 100}, function(){console.log("done")});
                    L.tileLayer('http://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png',
                        {
                            //maxZoom: 10,
                            attribution: '&copy; Openstreetmap France | &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
                        }).addTo(map);

                },
                error => {console.log(error);
                }, options
            )
        }
    }
    
    function addMarkers(markers) {
        markers.forEach(item => {
            console.log(item);
            var iconUser = L.icon({
                iconUrl: 'assets/dist/images/place-marker.png',
                //shadowUrl: 'leaf-shadow.png',
                iconSize:     [64, 64],
                shadowSize:   [64, 64],
                iconAnchor:   [64, 64],
                //shadowAnchor: [4, 62],
                //popupAnchor:  [-3, -76]
            });
            let marker = new L.marker([item.lat,item.lon], {icon: iconUser}).bindPopup(item.username).addTo(map);
            marker.bounce({duration: 500, height: 100}, function(){console.log("done")});
        })
    }
});