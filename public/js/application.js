$(document).ready(function() {

  // User requests weather for a city
  $('div').on('submit', 'form#pick-city-form', function(event) {
    event.preventDefault();
    $form = $(this);
    $.ajax({
      url: $form.attr('action'),
      method: $form.attr('method'),
      data: $form.serialize()
    }).done(function(response) {
      console.log(response);
      $('div#requested-city-info').html(response);
    }).fail(function(response) {
      console.log(response);
      // $('div.already-favorited').hide();
      // $('div.already-favorited').prepend(response.responseText);
    })
  })

});
