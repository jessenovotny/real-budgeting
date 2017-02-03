$(document).ready(function(){
  function validateEmail(){
    $('form#new_subscriber').submit(email, function(event){
      event.preventDefault();
      var email = $('input#subscriber_email').val();
      var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      if (re.test(email)){
        debugger;
        $.post({url: 'subscribers', data: email}).success(function(){
          alert("You've got mail!");
        })
      } else {
        // debugger;
        alert("Please enter a valid email address.");
        // validateEmail();
      };
    })
  }
  validateEmail();
});