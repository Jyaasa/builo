class Datalink
  constructor: ->
    $(document).on "turbolinks:load", ->
      $(".company-item[data-link]").click ->
        window.location = $(this).data("link")
$(document).on "ready page:load",(event) ->
  datalink = new Datalink
