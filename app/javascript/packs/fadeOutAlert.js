function fadeOutAlert() {
  setTimeout(function(){
    $('.alert').slideUp(500);
  }, 1000);
};

export { fadeOutAlert }
