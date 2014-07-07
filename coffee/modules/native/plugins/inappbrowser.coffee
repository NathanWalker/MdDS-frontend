# Module for In-App Browser

angular.module('inappbrowser', ['ionic'])
.provider("inappbrowser", ->

  $get: ['$q', '$window', ($q, $window)->

    api = {}

    ###
    Open modal window
    Options:
      Android only

      closebuttoncaption: set to a string that will be the caption for the "Done" button.
      hidden: set to 'yes' to create the browser and load the page, but not show it. The load event will fire when loading is complete. Omit or set to 'no' (default) to have the browser open and load normally.
      clearcache: set to 'yes' to have the browser's cookie cache cleared before the new window is opened
      clearsessioncache: set to 'yes' to have the session cookie cache cleared before the new window is opened

      iOS only

      closebuttoncaption: set to a string that will be the caption for the "Done" button. Note that you will have to localize this value yourself.
      hidden: set to 'yes' to create the browser and load the page, but not show it. The load event will fire when loading is complete. Omit or set to 'no' (default) to have the browser open and load normally.
      toolbar: set to 'yes' or 'no' to turn the toolbar on or off for the InAppBrowser (defaults to 'yes')
      enableViewportScale: Set to yes or no to prevent viewport scaling through a meta tag (defaults to no).
      mediaPlaybackRequiresUserAction: Set to yes or no to prevent HTML5 audio or video from autoplaying (defaults to no).
      allowInlineMediaPlayback: Set to yes or no to allow inline HTML5 media playback, displaying within the browser window rather than a device-specific playback interface. The HTML's video element must also include the webkit-playsinline attribute (defaults to no)
      keyboardDisplayRequiresUserAction: Set to yes or no to open the keyboard when form elements receive focus via JavaScript's focus() call (defaults to yes).
      suppressesIncrementalRendering: Set to yes or no to wait until all new view content is received before being rendered (defaults to no).
      presentationstyle: Set to pagesheet, formsheet or fullscreen to set the presentation style (defaults to fullscreen).
      transitionstyle: Set to fliphorizontal, crossdissolve or coververtical to set the transition style (defaults to coververtical).
    ###

    api.open = (url, options, closeUrl) ->
      q = $q.defer()
      opt = "location=no,enableViewportScale=yes"
      if options
        for key of options
          opt += ",#{key}=#{options[key]}"
      ref = $window.open(url, '_blank', opt)

      if ref
        ref.addEventListener 'loadstart', (event) ->
          console.log('start: ' + event.url)
          if closeUrl and event.url is closeUrl
            ref.close()
            q.resolve()

        ref.addEventListener 'loadstop', (event) ->
          console.log('stop: ' + event.url)

        ref.addEventListener 'loaderror', (event) ->
          console.log('error: ' + event.message)

        ref.addEventListener 'exit', (event) ->
          console.log(event.type)

      q.promise

    api
  ]
)
