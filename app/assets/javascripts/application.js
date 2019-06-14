// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function openTab(evt, tabName) {
  var i, x, tablinks;
  x = document.getElementsByClassName('content-tab');
  for (i = 0; i < x.length; i++) {
    x[i].style.display = 'none';
  }
  tablinks = document.getElementsByClassName('tab');
  for (i = 0; i < x.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(' is-active', '');
  }
  document.getElementById(tabName).style.display = 'block';
  evt.currentTarget.className += ' is-active';
}

//One Modal
function OpenModal() {
  //Get element with Id= "modal"
  var modal = document.getElementById('myModal');
  //Change style to display = "block"
  modal.style.display = 'block';
}

function CloseModal() {

    //For single modal
    var modal = document.getElementById("myModal");
    var close = document.getElementById("close");
    //If the click was on the modal the modal style display = "none"
    if (event.target == close) {
        modal.style.display = "none";
    }
}
