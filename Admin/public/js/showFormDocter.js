$ = document.querySelector.bind(document);

btnCloseDocter = $(".close-btn__docter");
formInsertDocter = $(".form__insert-docter");
docterInsertBtn = $(".docter-Insert__btn");

function showFormInsertDocter() {
    formInsertDocter.classList.add("show");
}
function hidderFormInsertDocter() {
    formInsertDocter.classList.remove("show");
}

docterInsertBtn.addEventListener("click", showFormInsertDocter);
btnCloseDocter.addEventListener("click", hidderFormInsertDocter);
