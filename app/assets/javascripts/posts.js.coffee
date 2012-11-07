# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(($) ->
  $(".del_post").on(
    "ajax:success": (e, data) ->
      #console.log(arguments)
      $("#post_" + data.data.id).fadeOut("slow")
  )
)