define(["require", "backbone", "jquery", "bootstrap", "jquery.fileupload-fp"], (require) ->
  console.log "uploader"
  Backbone = require "backbone"
  $ = require "jquery"
  require "bootstrap"
  require "jquery.fileupload-fp"
  $.test = 789

  console.log("$.fn.modal is " +  typeof $.fn.modal)
  console.log("$.fn.fileupload is " +  typeof $.fn.fileupload)
)
