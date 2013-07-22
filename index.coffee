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
    console.log 'footer'
    $footer = $(this)
    $i = $footer.find('i')
    $footer.parent('.module').toggleClass('box-up')
    console.log 'change class'
    if $footer.parent('.module').hasClass('box-up')
      $i.addClass($footer.attr('data-up'))
      $i.removeClass($footer.attr('data-down'))
    else 
      $i.addClass($footer.attr('data-down'))
      $i.removeClass($footer.attr('data-up'))
    

  $('#share-btn').click (e)->
    $('.share-box').show()

  $('.share-cancel-btn').click (e)->
    $('.share-box').hide()

  #Bind share url
  localUrl = window.location.toString()
  $('.share-box a').each (index, item)->
    $item = $(item)
    hrefStr = $item.attr('href')
    $item.attr('href', hrefStr.replace('{{url}}', localUrl))

  #Bind app download url
  if isiOS()
    $('#download-btn').attr('href','https://itunes.apple.com/us/app/jin-ru-yi/id569471235?ls=1&mt=8')
  else
    $('#download-btn').attr('href','http://www.5800.com/ruanjian/app.apk')



