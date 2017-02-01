class Popup
  constructor: ->
    $(document).on "turbolinks:load", ->
      modal = $("#modal")
      img = $(".photos--image")
      img.click ->
        modal.css 'display','block'
        current_img_id = $(this).attr('src')
        $('#company-img').attr 'src', current_img_id
        return
      $('.close').click ->
        modal.css 'display','none'
        return

      $('.current-image').click ->
        current_img_id = $(this).attr('src')
        $('#company-img').attr 'src', current_img_id
        return
      $(document).on 'click touch', (event) ->
        if !$(event.target).parents().addBack().is('.photos--image')
          $('#modal').hide()
        return
      $('.company-popup').click (e) ->
        e.stopPropagation()
        return
$(document).on "ready page:load",(event) ->
  popup = new Popup

