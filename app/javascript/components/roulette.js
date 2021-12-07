import $ from 'jquery';

const roulette = () => {

  let currentLength = ((1 / 37) * 360) / 2;

  $(".wheel img").css("transform", "rotate(" + currentLength + "deg)");

  const button = document.querySelector(".spin");
  const randomButton = document.querySelector('.random-recipe')
  button.addEventListener("click", () => {
    //$(".wheel img").css("filter", "blur(8px)");

    var spininterval = getRandomInt(0, 37) * (360 / 37) + getRandomInt(3, 4) * 360;
    currentLength += spininterval;

    var numofsecs = spininterval;

    $(".wheel img").css("transform", "rotate(" + currentLength + "deg)");

    setTimeout(function () {
      $(".wheel img").css("filter", "blur(0px)");
      randomButton.classList.remove('d-none');
    }, numofsecs);
  });

  function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }

};
export { roulette }
