const pinPointsOnMap = (locations) => {
    let map = L.map('mapContainer').setView([-37.81, 144.96], 8);
    
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);
    
    locations.forEach(location => {
        marker = new L.marker([location[1],location[2]])
            .bindPopup(location[0])
            .addTo(map);
    }) 
}

if (window.location.pathname === '/found_animals') {
    const foundLocations = [];
    let foundData = document.querySelector('#found-animal-data').dataset.animals;
    foundData = JSON.parse(foundData);
    console.log(foundData)

    for(let i = 0; i < foundData.location.length; i++) {
        for(let j = 0; j < foundData.lat.length; j++) {
            for(let x = 0; x < foundData.long.length; x++) {
                foundLocations.push([foundData.location[i], foundData.lat[j], foundData.long[x]])
            }
        }
    }

    console.log(foundLocations)
    pinPointsOnMap(foundLocations);
}

if (window.location.pathname === '/lost_animals') {
    const lostLocations = [];
    let lostData = document.querySelector('#lost-animal-data').dataset.animals;
    lostData = JSON.parse(lostData);
    console.log(lostData)

    for(let i = 0; i < lostData.location.length; i++) {
        for(let j = 0; j < lostData.lat.length; j++) {
            for(let x = 0; x < lostData.long.length; x++) {
                lostLocations.push([lostData.location[i], lostData.lat[j], lostData.long[x]])
            }
        }
    }

    console.log(lostLocations)
    pinPointsOnMap(lostLocations);
}