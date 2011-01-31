(function($){

  //validates the value to be not null.
  $.fn.validateNotNull = function(){
    var result = true;
    this.each(function(){
      var value = $(this).val();

      if (value == ""){ //todo need to fix the check.
        alert("enter a name!");
        result =  false;
      }

    });
    return result;
  };
    
  //validates the presence of only alphabets characters.
  $.fn.alpha = function(){
    var result = true;
    var alphas = /^[a-zA-Z]+$/;
    this.each(function(){
      var value = $(this).val();
      result = !!value.match(alphas) && result;
    });
    alert("alpha : " + result);
    return result;
  };
    
  //validates the presence of only numeric characters.
  $.fn.numeric = function(){
    var result = true;
    var numbers = /^[0-9]+$/
    this.each(function(){
      var value = $(this).val();
      result = !!value.match(numbers) && result;
    });
    alert("numeric : " + result);
    return result;
  };
  
})(jQuery);