# The angular app. It all starts here!
app = angular.module('MDDSApp', ['ionic', 'nativePlugins', 'Core', 'User', 'Learn'])
.config(['$provide', '$compileProvider', '$sceProvider', ($provide, $compileProvider, $sceProvider) ->
  $provide.decorator '$rootScope', ['$delegate', ($delegate) ->
    $delegate.safeApply = (fn) ->
      phase = $delegate.$$phase
      if phase is "$apply" or phase is "$digest"
        if fn and typeof fn is 'function'
          # in middle of digest, just execute function normally
          fn()
      else
        $delegate.$apply(fn)

    return $delegate
  ]

  # fix up url sanitization
  $compileProvider.aHrefSanitizationWhitelist /^\s*(https?|ftp|tel|mailto|file|chrome-extension|content|sms):/
  $compileProvider.imgSrcSanitizationWhitelist /^\s*(https?|ftp|mailto|file|tel|content|blob):|data:image|/
  $sceProvider.enabled(false)
])
.controller('AppCtrl', ($scope) -> return )
.controller('LearnCtrl', ($scope) ->
  $scope.resources = [
    { title: 'Reggae', id: 1 },
    { title: 'Chill', id: 2 },
    { title: 'Dubstep', id: 3 },
    { title: 'Indie', id: 4 },
    { title: 'Rap', id: 5 },
    { title: 'Cowbell', id: 6 }
  ]
)
.controller('DetailCtrl', ($scope, $stateParams, $window) -> $window.alert($stateParams.learnId) )

.controller("VideoCtrl", ($scope, $stateParams, $window) -> )

.controller("StoryCtrl", ($scope, $stateParams, $window) -> )

.controller("ForumCtrl", ($scope, $stateParams, $window) -> )

.run(['$rootScope', '$window', '$ionicPlatform', '$ionicNavBarDelegate', ($rootScope, $window, $ionicPlatform, $ionicNavBarDelegate) ->

  # globals
  $rootScope.goBack = -> $ionicNavBarDelegate.back()

  $ionicPlatform.ready ->
    $window.cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)  if $window.cordova and $window.cordova.plugins.Keyboard
    $window.StatusBar.styleDefault()  if $window.StatusBar
    return
])

