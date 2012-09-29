// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.uploadify.min.js
//= require_tree .


  var uploadify_script_data = {};

  // Fetch the CSRF meta tag data
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');

  // Now associate the data in the config, encoding the data safely
  uploadify_script_data[csrf_token] = encodeURI(csrf_param);

   // Configure Uploadify
  $('#file_upload').uploadify({
    'uploader' : '/assets/uploadify.swf',
    'script' : '/photos/',
    'scriptData' : uploadify_script_data
  });
});
</script>