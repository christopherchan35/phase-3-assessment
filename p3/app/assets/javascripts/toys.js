//created by hand at 9:43AM. did not generate
$(document).ready(function(){
  showToyListener();
})

var showToyListener = function(){
  $('.link').on('ajax:success', function(event, response){
    console.log(response);
  })
}
