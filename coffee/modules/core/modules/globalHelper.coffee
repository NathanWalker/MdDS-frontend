angular.module("globalHelper", []).provider "globalHelper", ->

  _appName = 'MdDS'
  _server = 'http://localhost:8000'
  _apiServer = 'https://api.mddsapp.com/'

  appName: ->
    _appName

  setServer: (server) ->
    _server = server

  setApiServer: (server) ->
    _apiServer = server

  $get: ['$window', ($window) ->

    api = {}

    api.appName = ->
      _appName

    api.server = ->
      if $window.ionic and $window.ionic.Platform.isWebView()
        # hard coded for native app
        'https://www.mddsapp.com/'
      else
        _server

    api.apiServer = ->
      _apiServer

    api.noop = ->
      return

    api
  ]
