$(document).on("turbolinks:load", function() {
  $(".user-form-submit").on("click", function(event) {
    event.preventDefault();

    $(".user_edit").submit();
  })
})
