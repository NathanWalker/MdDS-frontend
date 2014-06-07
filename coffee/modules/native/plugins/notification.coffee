# Module for In-App Browser

angular.module('notification', ['ionic', 'globalHelper'])
.provider("notification", ->

  $get: ['$q', '$window', 'globalHelper', ($q, $window, globalHelper)->

    api = {}

    api.alert = (msg, title, btnName) ->
      if $window.navigator.notification
        msg = msg or ""
        title = title or globalHelper.appName()
        btnName = btnName or "OK"
        $window.navigator.notification.alert(msg, globalHelper.noop(), title, btnName)

    api.confirm = (msg, title, btnLabels) ->
      q = $q.defer()
      if $window.navigator.notification
        msg = msg or ""
        title = title or globalHelper.appName()
        btnLabels = btnLabels or "OK,Cancel"
        confirmYes = ->
          q.resolve()
        $window.navigator.notification.confirm(msg, confirmYes, title, btnLabels)

      q.promise

    api.prompt = (msg, title, btnLabels, defaultText) ->
      q = $q.defer()
      if $window.navigator.notification
        msg = msg or ""
        title = title or globalHelper.appName()
        btnLabels = btnLabels or ["OK","Cancel"]
        defaultText = defaultText or ""
        confirmYes = ->
          q.resolve()
        $window.navigator.notification.prompt(msg, confirmYes, title, btnLabels, defaultText)

      q.promise

    api.beep = (times) ->
      if $window.navigator.notification
        times = times or 1
        $window.navigator.notification.beep(times)

    api.vibrate = (ms) ->
      if $window.navigator.notification
        ms = ms or 1000 # 1 second
        $window.navigator.notification.vibrate(ms)

    api

  ]
)
