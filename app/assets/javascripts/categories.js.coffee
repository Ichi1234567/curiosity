# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


#$(($) ->
#  if typeof plupload isnt "undefined"
#    uploader = new plupload.Uploader({
#      runtimes : 'gears,html5,flash,silverlight,browserplus',
#      browse_button : 'pick_file',
#      container : 'container',
#      max_file_size : '10mb',
#      url : '',
#      flash_swf_url : '/plupload/js/plupload.flash.swf',
#      silverlight_xap_url : '/plupload/js/plupload.silverlight.xap',
#      filters : [
#          {title : "Image files", extensions : "jpg,gif,png"},
#          {title : "Zip files", extensions : "zip"}
#      ],
#      resize : {width : 320, height : 240, quality : 90}
#    })
#    uploader.bind("init", (up, params) ->
#      $('#file_list').html("<div>Current runtime: " + params.runtime + "</div>")
#    )
#    $("#upload_file").on({
#      "click": (e) ->
#        uploader.start()
#        e.preventDefault()
#    })
#    uploader.init();
#    uploader.bind("FilesAdded", (up, files) ->
#      $.each(files, (i, file) ->
#        $("#file_list").append('<div id="' + file.id + '">' +
#          file.name + ' (' + plupload.formatSize(file.size) + ') <b></b>' +
#          '</div>')
#      )
#      up.refresh()
#    )
#    uploader.bind("UploadProgress", (up, file) ->
#      $('#' + file.id + " b").html(file.percent + "%")
#    )
#    uploader.bind("Error", (up, err) ->
#      $('#file_list').append("<div>Error: " + err.code +
#          ", Message: " + err.message +
#          (err.file if ", File: " + err.file.name else "") +
#          "</div>"
#      );
#      up.refresh(); # Reposition Flash/Silverlight
#    )
#    uploader.bind("FileUploaded", (up, file) ->
#      $('#' + file.id + " b").html("100%")
#    )
#)


define((require) ->
  console.log("categories index")
  require "common"
  $ = require "jquery"

  require "uploader"
  #require "bootstrap"
  #require "jquery.fileupload-fp"
  require "jquery.maxlength"
  console.log("$.fn.modal is " +  typeof $.fn.modal)
  console.log("$.fn.fileupload is " +  typeof $.fn.fileupload)
  console.log("$.fn.maxlength is " +  typeof $.fn.maxlength)
)