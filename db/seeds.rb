Incident.destroy_all
LostAnimal.destroy_all
FoundAnimal.destroy_all
User.destroy_all

admin = User.create(name: 'Bob', email: 'bob@gmail.com', password: 'bob')
loser = User.create(name: 'Sally', email: 'sally@gmail.com', password: 'sally')
founder = User.create(name: 'Ben', email: 'ben@gmail.com', password: 'ben')
surfer = User.create(name: 'Taylor', email: 'taylor@gmail.com', password: 'taylor', admin_privilege: true)

bushfire = Incident.create(name: 'Bush Fire', category: 'fire')
campfire = Incident.create(name: 'Camp Fire', category: 'fire')
desertfire = Incident.create(name: 'Desert Fire', category: 'fire')
forestfire = Incident.create(name: 'Forest Fire', category: 'fire')
nightonfire = Incident.create(name: 'Night on Fire', category: 'fire')

#found = FoundAnimal.create(species: 'cat', user_id: 1, incident_id: 2, date_found: '11/11/2017', location_found: 'Geelong', location_current: 'St Kilda', health_status: 'healthy', tags: ['siamese', 'black'], reunited: false)
#found2 = FoundAnimal.create(species: 'dog', user_id: 2, incident_id: 3, date_found: '11/11/2017', location_found: 'Kensington', location_current: 'Brighton', health_status: 'healthy', tags: ['dog', 'small'], reunited: false)
#found3 = FoundAnimal.create(species: 'chicken', user_id: 3, incident_id: 4, date_found: '11/11/2017', location_found: 'Sunshine', location_current: 'Frankston', health_status: 'injured', tags: ['chicken'], reunited: false)
#found4 = FoundAnimal.create(species: 'turtle', user_id: 4, incident_id: 5, date_found: '11/11/2017', location_found: 'Melbourne', location_current: 'Werribee', health_status: 'severe', tags: ['small', 'turtle'], reunited: false)
#found5 = FoundAnimal.create(species: 'cat', user_id: 1, incident_id: 1, date_found: '11/11/2017', location_found: 'Lara', location_current: 'Surrey Hills', health_status: 'injured', tags: ["white", "cat"], reunited: false)

found = FoundAnimal.create(species: 'cat', user_id: 1, incident_id: 2, date_found: '11/11/2017', location_found: 'Geelong', location_current: 'St Kilda', lat: Geocoder.coordinates('St Kilda').first, long: Geocoder.coordinates('St Kilda').last, image: 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&h=350', health_status: 'healthy', tags: ['siamese', 'black'], reunited: false)
found2 = FoundAnimal.create(species: 'dog', user_id: 2, incident_id: 3, date_found: '11/11/2017', location_found: 'Kensington', location_current: 'Brighton', lat: Geocoder.coordinates('Brighton').first, long: Geocoder.coordinates('Brighton').last, image: 'https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&h=350', health_status: 'healthy', tags: ['dog', 'small'], reunited: false)
found3 = FoundAnimal.create(species: 'chicken', user_id: 3, incident_id: 4, date_found: '11/11/2017', location_found: 'Sunshine', location_current: 'Frankston', lat: Geocoder.coordinates('Frankston').first, long: Geocoder.coordinates('Frankston').last, image: 'https://i.pinimg.com/originals/33/3f/a6/333fa65369cb1ead7545ba027a764471.jpg', health_status: 'injured', tags: ['chicken'], reunited: false)
found4 = FoundAnimal.create(species: 'turtle', user_id: 4, incident_id: 5, date_found: '11/11/2017', location_found: 'Melbourne', location_current: 'Werribee', lat: Geocoder.coordinates('Werribee').first, long: Geocoder.coordinates('Werribee').last, image: 'https://cdn.newsapi.com.au/image/v1/fb21b0a8b881448a2fc5f8011ce320b6', health_status: 'severe', tags: ['small', 'turtle'], reunited: false)
found5 = FoundAnimal.create(species: 'cat', user_id: 1, incident_id: 1, date_found: '11/11/2017', location_found: 'Lara', location_current: 'Surrey Hills', lat: Geocoder.coordinates('Surrey Hills').first, long: Geocoder.coordinates('Surrey Hills').last, image: 'http://r.ddmcdn.com/s_f/o_1/cx_462/cy_245/cw_1349/ch_1349/w_720/APL/uploads/2015/06/caturday-shutterstock_149320799.jpg', health_status: 'injured', tags: ["white", "cat"], reunited: false)

lost = LostAnimal.create(species: 'cat', user_id: 1, incident_id: 2, date_lost: '11/11/2017', location_lost: 'Geelong', lat: Geocoder.coordinates('Geelong').first, long: Geocoder.coordinates('Geelong').last, tags: ['cat', 'small'], reunited: false, image: 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&h=350')
lost3 = LostAnimal.create(species: 'chicken', user_id: 2, incident_id: 2, date_lost: '11/11/2017', location_lost: 'Sunshine', lat: Geocoder.coordinates('Sunshine').first, long: Geocoder.coordinates('Sunshine').last, tags: ['chicken'], reunited: true, image: 'https://i.pinimg.com/originals/33/3f/a6/333fa65369cb1ead7545ba027a764471.jpg')
lost4 = LostAnimal.create(species: 'horse', user_id: 3, incident_id: 4, date_lost: '11/11/2017', location_lost: 'Bentleigh', lat: Geocoder.coordinates('Bentleigh').first, long: Geocoder.coordinates('Bentleigh').last, tags: ['horse', 'brown'], reunited: false, image: 'https://images.pexels.com/photos/635499/pexels-photo-635499.jpeg?auto=compress&cs=tinysrgb&h=350')
lost5 = LostAnimal.create(species: 'bird', user_id: 4, incident_id: 5, date_lost: '11/11/2017', location_lost: 'Surry Hills', lat: Geocoder.coordinates('Surrey Hills').first, long: Geocoder.coordinates('Surrey Hills').last, tags: ['multicolour', 'bird'], reunited: false, image: 'https://images.pexels.com/photos/326900/pexels-photo-326900.jpeg?auto=compress&cs=tinysrgb&h=350')

