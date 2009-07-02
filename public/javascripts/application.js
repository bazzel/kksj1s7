replace_ids = function(s){
  var new_id = new Date().getTime();
  return s.replace(/NEW_RECORD/g, new_id);
}

$(function(){ 
  // Inspired by http://github.com/alloy/complex-form-examples
  $('.add_nested_item').click(function(){
    template = eval(this.hash.replace(/.*#/, ''));
    $(replace_ids(template)).appendTo("#" + this.rel + ' > fieldset > ol');
    return false;
  });
  
  $('.child a.remove').live('click', function(){
    if (confirm('Are you sure?')){
      $(this).parents('.child').slideUp("normal");
      // Set value of _delete (a hidden tag next to the click a href) attribute to 1 (Rails nested object forms).
      $(this).next().attr('value', '1');
    }
    return false;
  });
  
});