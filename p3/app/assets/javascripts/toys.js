//created by hand at 9:43AM. did not generate
$(document).ready(function(){
  returnToyListener();
})

var returnToyListener = function(){
  $('.link').on('ajax:success', function(event, response){
    var desc = []
    for (var toy in response){
      for (var description in toy){
        desc.push(response[toy].description)
      }
    }
    $('#sup').append(desc + "<br><br>");
    var shortest = desc.reduce(function (a, b) { return a.length < b.length ? a : b; });
    console.log(shortest);
  })
}
