# Module for In-App Browser

angular.module('activityindicator', ['ionic'])
.provider("activityindicator", ->

  $get: ['$q', '$window', ($q, $window)->

    api = {}

    api.show = (msg) ->
      if $window.ActivityIndicator
        $window.ActivityIndicator.show(msg or "")

    api.hide = ->
      if $window.ActivityIndicator
        $window.ActivityIndicator.hide()

    api

  ]
)
.run(['$rootScope', 'activityindicator', ($rootScope, ai) ->

  $rootScope.$on '$stateChangeSuccess', ->
    console.log('$stateChangeSuccess')
    ai.hide()

])
