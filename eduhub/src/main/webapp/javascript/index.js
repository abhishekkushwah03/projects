const courseul = document.querySelector("#inlineul");
const show = document.querySelector("#courseli");

const ot_box = document.querySelectorAll('.outerboxes');
const in_box = document.querySelectorAll('.innerbox');
    

courseul.addEventListener("mouseover",(e) => {
    show.style.display = "inline-block";
});

courseul.addEventListener("mouseout",(e) => {
    show.style.display = "none";
});





