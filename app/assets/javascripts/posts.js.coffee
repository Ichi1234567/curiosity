# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
require(["require"], (require) ->
  Backbone = require "backbone"
  ViewIndex = Backbone.View.extend(
    events:
      "click .preview": "show_click"
      "click .del_post": "delete_click"
    show_click: (e) ->
      console.log("backbone click")
      #console.log arguments
      _$target = $(e.target)
      _id= _$target.parent().parent().attr("id").split("_")[1]
      $.ajax({
        url: "/posts/" + _id
        dataType: "json"
      }).done((data) ->
        #console.log arguments
        require(["hbs!posts/show"], () ->
          _html = HandlebarsTemplates['posts/show'](data.post)
          $("#preview").html(_html)
        )
      )
      e.preventDefault()
    delete_click: (e) ->
  )
  new ViewIndex({
    el: "body"
  })
)
#$(($) ->
#  # console.log($(".del_post").length)
#  $(".del_post").on(
#    "click": () ->
#      #console.log "click"
#    "ajax:success": (e, data) ->
#      #console.log(arguments)
#      $("#post_" + data.data.id).fadeOut("slow")
#  )
#
#  $(".preview").on(
#    "ajax:success": (e, data) ->
#      #console.log(arguments)
#      _html = HandlebarsTemplates['posts/show'](data.post)
#      #console.log _html
#      $("#preview").html(_html)
#  )
#)