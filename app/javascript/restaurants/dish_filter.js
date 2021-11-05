function filterDishes () {
  const buttons = document.querySelectorAll('.person-button');
  buttons.forEach((button) => {
    button.addEventListener('click', (event) => { 
      const currentlyShowing = document.querySelector('.show-meals') 
      const currentlyShowingButton = document.querySelector('.selected')
      const userDishes = document.getElementById(`${button.id}-dishes`)
      userDishes.classList.toggle("show-meals");
      button.classList.toggle("selected");
      if (currentlyShowing) {
        currentlyShowing.classList.remove('show-meals');
        currentlyShowingButton.classList.remove('selected');
      }
    });
  });
}

export {filterDishes}
