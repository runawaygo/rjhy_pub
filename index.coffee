$ ->
  $('.module-footer').click (e)->
    $footer = $(this)
    $footer.parent('.module').toggleClass('box-up')
    
    if $footer.parent('.module').hasClass('box-up')
      $footer.html($footer.attr('data-down'))
    else 
      $footer.html($footer.attr('data-up'))

  $('#share-btn').click (e)->
    $('.share-box').show()

  $('.share-cancel-btn').click (e)->
    $('.share-box').hide()

  localUrl = window.location.toString()
  $('.share-box a').each (index, item)->
    $item = $(item)
    hrefStr = $item.attr('href')
    $item.attr('href', localUrl)
