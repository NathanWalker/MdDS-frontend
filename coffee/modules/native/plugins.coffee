angular.module('nativePlugins', ['ionic', 'activityindicator', 'inappbrowser', 'notification'])
.config(["$provide", ($provide) ->

  if window and window.ionic and window.ionic.Platform.isWebView()
    # inside the app, decorate window
    $provide.decorator '$window', ['$delegate', '$injector', ($delegate, $injector) ->
      $delegate.alert = (msg) ->
        # injector used because injecting directly into decorator causes circular dependency
        notification = $injector.get('notification')
        notification.alert(msg)

      windowConfirm = $delegate.confirm
      $delegate.confirm = (msg) ->
        $q = $injector.get('$q')
        defer = $q.defer()
        # injector used because injecting directly into decorator causes circular dependency
        notification = $injector.get('notification')
        notification.confirm(msg).then () ->
          defer.resolve()
        defer.promise

      return $delegate
    ]
])
.run(['$ionicPlatform', '$window', ($ionicPlatform, $window) ->
  $ionicPlatform.ready ->
    # device is ready (plugins are loaded)

    # hide splash screen
    $window.navigator.splashscreen.hide() if $window.navigator.splashscreen
])
