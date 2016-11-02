//created by hand at 9:43AM. did not generate
$(document).ready(function(){
  showToyListener();
})

var showToyListener = function(){
  $('.link').on('ajax:success', function(event, response){
    var desc = []
    for (var toy in response){
      for (var description in toy){
        desc.push(response[toy].description)
      }
    }

    var shortest = desc.reduce(function (a, b) { return a.length < b.length ? a : b; });
    console.log(shortest);
  })
}
