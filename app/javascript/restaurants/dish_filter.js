function filterDishes () {
  const buttons = document.querySelectorAll('.person-button');
  buttons.forEach((button) => {
    button.addEventListener('click', (event) => {
      const currentlyShowing = document.querySelector('.show-meals') 
      const userDishes = document.getElementById(`${button.id}-dishes`)
      userDishes.classList.toggle("show-meals");
      if (currentlyShowing) {
        currentlyShowing.classList.toggle('show-meals');
      }
      });
  });
}

export {filterDishes}
