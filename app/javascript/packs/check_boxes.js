function updateCheckboxes () {

 const checks = document.querySelectorAll('input[type=checkbox]#friend_ids_');
const checkbox = document.getElementById("green-check");
  checks.forEach((check) => {
    check.addEventListener("click", (event) => {

      const userBox = document.getElementById(`${button.id}-dishes`)

      const friend = document.getElementById("friend_ids_");
      friend.checked = true;


  });

});


}

export {updateCheckboxes}
