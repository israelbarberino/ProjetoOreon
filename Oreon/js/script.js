const colors = ["green", "red",  "rgba(133,122,200)", "#f15025"];
const btn = document.getElementById("btn");
const color = document.querySelector(".color");

btn.addEventListener("click", function(){
    const randomNumber = getRandomNumber();

    // faz a seleção das cores ao clicar

    document.body.style.backgroundColor = colors[randomNumber];
    color.textContent = colors[randomNumber];
});

// executa e muda a cor do background

function getRandomNumber(){
    return Math.floor(Math.random() * colors.length);
}