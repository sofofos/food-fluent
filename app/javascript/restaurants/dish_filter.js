function filterDishes () {
  const buttons = document.querySelectorAll('.person-button');
  buttons.forEach((button) => {
    button.addEventListener('click', (event) => {
      const currentlyShowing = document.querySelector('.show') 
      const userDishes = document.getElementById(`${button.id}-dishes`)
      userDishes.classList.toggle("show");
      if (currentlyShowing) {
        currentlyShowing.classList.remove('show');
      }
      });
  });
}

export {filterDishes}
