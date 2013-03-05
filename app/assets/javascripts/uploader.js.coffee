define((require) ->
  console.log "uploader"
  $ = require "common"
  require "jquery.fileupload-fp"

  console.log("$.fn.modal is " +  typeof $.fn.modal)
  console.log("$.fn.fileupload is " +  typeof $.fn.fileupload)
)
