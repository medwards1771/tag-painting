$(document).on("page:change", function(){
    addNewTagListener();
    destroyTagListener();
});

function addNewTagListener(){
  $('#new_tag_form').on('ajax:success', function(event, data) {
    document.getElementById("new_tag_form").reset();
    $('.tags-container').append(data.tag_item);
  }); 

  $('#new_tag_form').on('ajax:error', function(event, data) {
    for (i = 0; i < data.responseJSON.errors.length; i++) {
      $('#tag_errors').addClass('alert alert-danger').append(data.responseJSON.errors[i]);
    }
  });
}

function destroyTagListener(){
  $(".tags-container").on("ajax:success", ".destroy-tag-js", function(){
    $(this).parent().remove();
  });
}