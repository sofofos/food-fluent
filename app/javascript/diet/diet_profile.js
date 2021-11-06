function dietLabels () {
  const dietCardText = document.querySelectorAll('.diet-card-text');
  dietCardText.forEach((dietText) => {
    dietText.addEventListener('click', (event) => {
    const dietItem = document.querySelectorAll('diet-card-text'); 
      dietItem.classList.toggle('selected');
      // if (currentlyShowing) {
      //   currentlyShowing.classList.remove('show-meals');
      //   currentlyShowingButton.classList.remove('selected');
      // }
    });
  });
}

export {filterDishes}
