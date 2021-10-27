function filterDishes () {
  const buttons = document.querySelectorAll('.person-button');
  buttons.forEach((button) => {
    button.addEventListener('click', (event) => {
      const currentlyShowing = document.querySelector('.show') 
      if (currentlyShowing) {
        currentlyShowing.classList.remove('show');
      }
      const userDishes = document.getElementById(`${button.id}-dishes`) 
      userDishes.classList.toggle("show");
      });
  });
}

export {filterDishes}