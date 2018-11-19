const userLocation = {
    position: null
}

window.onload = () => {
    const animalLat = document.querySelector('.lat').textContent;
    const animalLong = document.querySelector('.long').textContent;
    //console.log(animalLat, animalLong)
    
    const calcDistance = (lat1, lon1, lat2, lon2) => {
        var p = 0.017453292519943295; 
        var c = Math.cos;
        var a = 0.5 - c((lat2 - lat1) * p)/2 + 
                c(lat1 * p) * c(lat2 * p) * 
                (1 - c((lon2 - lon1) * p))/2;
      
        return 12742 * Math.asin(Math.sqrt(a));
    }
    document.querySelector('#user_location').textContent = 
    `You are ${calcDistance(animalLat, animalLong, userLocation.position.lat, userLocation.position.long).toFixed(2)}km away from the animal`;
} 

const GEO_OPTIONS = {
    enableHighAccuracy: true, 
    maximumAge        : 30000, 
    timeout           : 27000
};

const getLocation = (options = {}, path) => {
    navigator.geolocation.watchPosition(
        (position) => {
            userLocation.position = {
                lat: position.coords.latitude, 
                long: position.coords.longitude
            }
            $.ajax({
                url : `/api/${path}`,
                type : "get",
                data : { data_value: JSON.stringify(userLocation.position) }
            });
           //console.log('user', userLocation.position.lat);
        }, 
        () => alert("Sorry, no position available."), 
        {
            ...GEO_OPTIONS,
            ...options
        }
        // x.textContent = userLocation.position
    );
}

if (/found_animals\/\d+?$/.test(window.location.pathname)) {
    getLocation('found_animals');
}


if (/lost_animals\/\d+?$/.test(window.location.pathname)) {
    getLocation('lost_animals');
}