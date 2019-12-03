ready = undefined

set_position = undefined

set_positions = ->
  $('.card').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return

ready = ->
  set_positions()
  html5sortable('.sortable')
  html5sortable('.sortable')[0].addEventListener 'sortupdate', (e) ->
    update_order = []
    set_positions()
    $('.card').each (i) ->
      update_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: 'PUT'
      url: '/portfolios/sort'
      data: order: update_order
    return
  return

$(document).ready ready