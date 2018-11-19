const userLocation = {
    position: null
}

const lat = document.querySelector('.lat');
const long = document.querySelector('.long');

// minus lat long from userLocation

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
        x.textContent = userLocation.position
    );
}

 
