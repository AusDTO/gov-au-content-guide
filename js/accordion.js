$('.js-accordion-trigger').bind('click', function(e){
  jQuery(this).parent().find('.submenu').slideToggle('fast');  // apply the toggle to the ul
  jQuery(this).parent().toggleClass('is-expanded');
  e.preventDefault();
});
$('.js-accordion-open-all').bind('click', function(e){
    jQuery(".accordion-heading").find('.submenu').slideDown('fast');  // apply the toggle to the ul
    jQuery(".accordion-heading").parent().addClass('is-expanded');
    e.preventDefault();
});
$('.js-accordion-close-all').bind('click', function(e){
    jQuery(".accordion-heading").parent().find('.submenu').slideUp('fast');  // apply the toggle to the ul
    jQuery(".accordion-heading").parent().removeClass('is-expanded');
    e.preventDefault();
});