# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(($) ->
  # console.log($(".del_post").length)
  $(".del_post").on(
    "click": () ->
      #console.log "click"
    "ajax:success": (e, data) ->
      #console.log(arguments)
      $("#post_" + data.data.id).fadeOut("slow")
  )

  $(".preview").on(
    "ajax:success": (e, data) ->
      #console.log(arguments)
      _html = HandlebarsTemplates['posts/show'](data.post)
      #console.log _html
      $("#preview").html(_html)
  )
)