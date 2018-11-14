// let searchInput = document.querySelector('.search-input')
// let searchForm = document.querySelector('.search-form')
// let results = document.querySelectorAll('.animal-item')

// function search(event) {
//   event.preventDefault()
//   results.forEach(animal => {
//     if (event.target.value === "") {
//       animal.style.display = "none"
//     } else if (animal.firstElementChild.textContent.includes(event.target.value)) {
//       animal.style.display = "block"
//     } else (
//       animal.style.display = "none"
//     )
//     // let tagsArray = animal.firstElementChild.textContent.split(' ')
//     // let matchedTags = tagsArray.filter(tag => {
//     //   let searchTerm = event.target.value
//     //   if (tag.includes(searchTerm)) {
//     //     return true
//     //   } else if (!tag.includes(searchTerm)) {
//     //     return false
//     //   }
//     // })
//     // if (event.target.value === "") {
//     //   animal.style.display = 'none'
//     // } else if (matchedTags.length > 0) {
//     //   animal.style.display = "block"
//     // } else {
//     //   animal.style.display = "none"
//     // }
//   })
// }
// searchForm.addEventListener('submit', search)
// searchInput.addEventListener('keyup', search)