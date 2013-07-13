// Generated by CoffeeScript 1.4.0

$(function() {
  var localUrl;
  $('.module-footer').click(function(e) {
    var $footer;
    $footer = $(this);
    $footer.parent('.module').toggleClass('box-up');
    if ($footer.parent('.module').hasClass('box-up')) {
      return $footer.html($footer.attr('data-down'));
    } else {
      return $footer.html($footer.attr('data-up'));
    }
  });
  $('#share-btn').click(function(e) {
    return $('.share-box').show();
  });
  $('.share-cancel-btn').click(function(e) {
    return $('.share-box').hide();
  });
  localUrl = window.location.toString();
  return $('.share-box a').each(function(index, item) {
    var $item, hrefStr;
    $item = $(item);
    hrefStr = $item.attr('href');
    return $item.attr('href', localUrl);
  });
});
