
// = require rails-ujs
// = require activestorage
// = require turbolinks
// = require bootstrap-sprockets
// = require_tree .

$(document).ready(function() {
    ( '#topheader .navbar-header a' ).on( 'click', function () {
        $( '#topheader .navbar-nav' ).find( 'li.active' ).removeClass( 'active' );
        $( this ).parent( 'li' ).addClass( 'active' );
    });
  });