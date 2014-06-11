# The angular app. It all starts here!
app = angular.module('MDDSApp', ['ionic', 'nativePlugins', 'Core', 'User', 'Learn', 'Story'])
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

  ]
)
.controller('DetailCtrl', ($scope, $stateParams, $window) -> $window.alert($stateParams.learnId) )

.controller("VideoCtrl", ($scope, $stateParams, $window) -> )

.controller("StoryCtrl", ($scope, $stateParams, $rootScope, $window, Stories) ->
  $scope.stories = Stories.stories
  $scope.viewDetail = (story) ->
    $rootScope.changeState("/stories/#{story.id}")
)

.controller("StoryDetailCtrl", ($scope, $stateParams, $window, Stories) ->
  if $stateParams.storyId
    $scope.story = Stories.storyById(+$stateParams.storyId)
)

.controller("ForumCtrl", ($scope, $stateParams, $window) -> )

.controller("DonateCtrl", ($scope, $stateParams, $window) -> )

.run(['$rootScope', '$window', '$ionicPlatform', '$ionicNavBarDelegate', '$state', '$location', ($rootScope, $window, $ionicPlatform, $ionicNavBarDelegate, $state, $location) ->

  # globals
  $rootScope.goBack = -> $ionicNavBarDelegate.back()

  $rootScope.changeState = (state) ->
    $location.url("/app#{state}")

  $ionicPlatform.ready ->
    $window.cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)  if $window.cordova and $window.cordova.plugins.Keyboard
    $window.StatusBar.styleDefault()  if $window.StatusBar
    return
])

