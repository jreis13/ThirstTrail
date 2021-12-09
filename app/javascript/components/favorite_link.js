const favoriteLink = () => {
  const cards = document.querySelectorAll(".card-recipe")

  if (cards) {
    cards.forEach((element =>
      element.addEventListener("click", () => {
        document.location.href = element.id
      })))
  }
}

export { favoriteLink }
