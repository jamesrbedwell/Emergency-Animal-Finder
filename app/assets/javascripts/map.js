if (window.location.pathname == '/found_animals'|| window.location.pathname == '/lost_animals') {
    const locations = [
        ["Geelong", -38.15, 144.36],
        ["Franston",-38.16, 145.14],
        ["Tullamarine",-37.70, 144.88]
    ];

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