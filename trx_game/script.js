const trex = document.getElementById("trex");
const cactus = document.getElementById("cactus");

document.addEventListener("keydown", function(event) {
    jump();
});

function jump () {
   if ( trex.classList != "jump") {
       trex.classList.add("jump")
   }
   setTimeout(function(){
       trex.classList.remove("jump")
   }, 500)
}

let isAlive = setInterval(function() {

let dinoTop = parseInt(window.getComputedStyle(trex).getPropertyValue("top"))
let cactusLeft = parseInt(window.getComputedStyle(cactus).getPropertyValue("left"))

if (cactusLeft < 50 && cactusLeft > 0 && dinoTop >= 140) {
    alert("GAME OVER!")
}

}, 10)