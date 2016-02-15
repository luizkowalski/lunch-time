$('.place').on('click', function() {
  var checkbox = $(this).find('input[type="checkbox"]');
  checkbox.attr('checked', !checkbox.attr('checked'));
});

$('#open_modal_add').bind('click', function(){
  $('#modal_add').openModal();
})
