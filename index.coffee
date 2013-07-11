$ ->
  console.log 'superwolf'
  $('.module-footer').click (e)->
    console.log 'supoerwolf'
    $(this).parent('.module').toggleClass('box-up')

  $('#share-btn').click (e)->
    $('.share-box').show()

  $('.share-cancel-btn').click (e)->
    $('.share-box').hide()