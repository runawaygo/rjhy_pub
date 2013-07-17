$ ->
  isiOS = ->
    isMobile =
      Android: ->
        navigator.userAgent.match(/Android/i)
      BlackBerry: ->
        navigator.userAgent.match(/BlackBerry/i)
      iOS: ->
        navigator.userAgent.match(/iPhone|iPad|iPod/i)
      Opera: ->
        navigator.userAgent.match(/Opera Mini/i)
      Windows: ->
        navigator.userAgent.match(/IEMobile/i)
      any: ->
        (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows())
    if isMobile.iOS() then true else false

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

  #Bind share url
  localUrl = window.location.toString()
  $('.share-box a').each (index, item)->
    $item = $(item)
    hrefStr = $item.attr('href')
    $item.attr('href', localUrl)

  #Bind app download url
  if isiOS()
    $('#download-btn').attr('href','https://itunes.apple.com/us/app/jin-ru-yi/id569471235?ls=1&mt=8')
  else
    $('#download-btn').attr('href','http://www.5800.com/ruanjian/app.apk')



