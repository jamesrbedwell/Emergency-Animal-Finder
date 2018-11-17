const USER_LOCATION = {
    user: {
        position: null
    }
}

const GEO_OPTIONS = {
    enableHighAccuracy: true, 
    maximumAge        : 30000, 
    timeout           : 27000
};


const getLocation = (options = {}) => {
    navigator.geolocation.watchPosition(
        (position) => {
            USER_LOCATION.user.position = {
                lat: position.coords.latitude, 
                long: position.coords.longitude
            }
            console.log(USER_LOCATION.user.position);
        }, 
        () => alert("Sorry, no position available."), 
        {
            ...GEO_OPTIONS,
            ...options
        }
    );
}
  
const pinPointsOnMap = (locations, foundData) => {
    // let map = L.map('mapContainer').setView([-37.81, 144.96], 8);
    console.log('map object', L.map('mapContainer'));

    
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);
    
    locations.forEach(location => {
        marker = new L.marker([location[1],location[2]])
            .bindPopup(location[0])
            .addTo(map);
    }) 
    // zoom dynamic
    console.log('locations', locations)
    const group = new L.featureGroup();
    const latLongPoints = location => location.slice(1);
    const boundingBox = L.latLngBounds(locations.map(latLongPoints));
    map.fitBounds(boundingBox);
    //map.fitBounds(group.getBounds([[Math.max(...foundData.lat), Math.max(...foundData.long)],[Math.min(...foundData.lat), Math.min(...foundData.long)]]));
    console.log(group)

}

if (/\/found_animals\/?$/.test(window.location.pathname)) {
    const foundLocations = [];
    let foundData = document.querySelector('#found-animal-data').dataset.animals;
    foundData = JSON.parse(foundData);
    console.log(foundData)

    for(let i = 0; i < foundData.location.length; i++) {
        foundLocations.push([foundData.location[i], foundData.lat[i], foundData.long[i]]);
    }

    console.log(foundLocations)
    pinPointsOnMap(foundLocations, foundData);
    getLocation();

}

if (/\/lost_animals\/?$/.test(window.location.pathname)) {
    const lostLocations = [];
    let lostData = document.querySelector('#lost-animal-data').dataset.animals;
    lostData = JSON.parse(lostData);
    //console.log(lostData)

    for(let i = 0; i < lostData.location.length; i++) {
        lostLocations.push([lostData.location[i], lostData.lat[i], lostData.long[i]]);
    }

    //console.log(lostLocations)
    pinPointsOnMap(lostLocations);
    getLocation();
}