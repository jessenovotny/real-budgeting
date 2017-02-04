// $(document).ready(function(){
//   function validateEmail(){
//     $('form#new_subscriber').submit(email, function(event){
//       event.preventDefault();
//       var email = $('input#subscriber_email').val();
//       var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
//       if (re.test(email)){
//         $.post({url: 'subscribers', data: {subscriber: {email: email}}}).success(function(){
//           alert("You've got mail!");
//         })
//       } else {
//         // debugger;
//         alert("Please enter a valid email address.");
//         // validateEmail();
//       };
//     })
//   }
//   validateEmail();
// });

$(function() {

    $("#playbook input").jqBootstrapValidation({
        preventSubmit: true,
        submitError: function($form, event, errors) {
            // additional error messages or events
        },
        submitSuccess: function($form, event) {
            debugger;
            // Prevent spam click and default submit behaviour
            $("form#playbook submit").attr("disabled", true);
            event.preventDefault();
            
            // get values from FORM
            var email = $("input#subscriber_email").val();
            // Check for white space in name for Success/Fail message
            $.ajax({
                url: "/subscribers",
                type: "POST",
                data: {
                    subscriber: {email: email}
                },
                cache: false,
                success: function() {
                  alert("You've got mail!");
                    // Enable button & show success message
                    // debugger;
                    // $("#contactSubmit").attr("disabled", false);
                    // $('#contactSuccess').html("<div class='alert alert-success'>");
                    // $('#contactSuccess > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                    //     .append("</button>");
                    // $('#contactSuccess > .alert-success')
                    //     .append("<strong>You've got mail.</strong>");
                    // $('#contactSuccess > .alert-success')
                    //     .append('</div>');

                    //clear all fields
                    $('form#new_subscriber').trigger("reset");
                },
                error: function() {
                    alert("There was an unexpected error processing your request.");
                    // Fail message
                    // $('#contactSuccess').html("<div class='alert alert-danger'>");
                    // $('#contactSuccess > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                    //     .append("</button>");
                    // $('#contactSuccess > .alert-danger').append("<strong>Sorry " + firstName + ", it seems that my mail server is not responding. Please try again later!");
                    // $('#contactSuccess > .alert-danger').append('</div>');
                    //clear all fields
                    $('form#new_subscriber').trigger("reset");
                },
            });
        },
        filter: function() {
            return $(this).is(":visible");
        },
    });
});
