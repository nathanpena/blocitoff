$(document).ready(function(){
if ( $( "a.glyphicon.glyphicon-unchecked" ).length ) { 
    $('a.glyphicon.glyphicon-unchecked').click(function(){$(this).removeClass('glyphicon-unchecked').addClass('glyphicon-ok');})
}
});