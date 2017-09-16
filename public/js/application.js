$(document).ready(function() {

// get login form
  $('div#nav-bar-container').on('click', 'a#login', function(event) {
    event.preventDefault();
    $link = $(this);
    $.ajax({
      url: $link.attr('href'),
      method: 'GET'
    }).done(function(response) {
      $('body a#login').hide();
      console.log(response);
      $('nav').append(response);
    })
  })

// submit login form
  $('div#nav-bar-container').on('submit', 'form#login', function(event) {
    event.preventDefault();
    $form = $(this);
    $.ajax({
      url: $form.attr('action'),
      method: $form.attr('method'),
      data: $form.serialize()
    }).done(function(response) {
      console.log(response);
      $('div#nav-bar-container').html(response)
      $.ajax({
        url: '/userfavorites',
        method: 'GET'
      }).done(function(response) {
        $('div.favorite-places-weather-container').html(response);
      })
    })
  })

// Log user out
  $('div#container').on('submit', 'form#logout', function(event) {
    event.preventDefault();
    $form = $(this);
    $.ajax({
      url: $form.attr('action'),
      method: $form.attr('method'),
      data: $form.serialize()
    }).done(function(response) {
      console.log(response);
      $('div#nav-bar-container').html(response)
      $.ajax({
        url: '/userfavorites',
        method: 'GET'
      }).done(function(response) {
        $('div.favorite-places-weather-container').html(response);
      })
    })
  })

// User picks a favorite
  $('div.favorite-places-form-container').on('submit', 'form.pick-favorite-form', function(event) {
    event.preventDefault();
    $form = $(this);
    $.ajax({
      url: $form.attr('action'),
      method: $form.attr('method'),
      data: $form.serialize()
    }).done(function(response) {
      console.log(response);
      $('div.favorite-places-weather-container').html(response);
    }).fail(function(response) {
      console.log(response);
      // $('div.already-favorited').hide();
      // $('div.already-favorited').prepend(response.responseText);
    })
  })

  // User deletes a favorite
  $('div.favorite-places-weather-container').on('submit', 'form.remove-favorite-form', function(event) {
    event.preventDefault();
    $form = $(this);
    $.ajax({
      url: $form.attr('action'),
      method: $form.attr('method'),
      data: $form.serialize()
    }).done(function(response) {
      console.log(response);
      $('div.favorite-places-weather-container').html(response);
    }).fail(function(response) {
      console.log(response);
      // $('div.already-favorited').hide();
      // $('div.already-favorited').prepend(response.responseText);
    })
  })

});
