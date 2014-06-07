angular.module("LocalStorage", []).factory "LocalStorage", ["$q", ($q) ->

  api = {}

  api.setItem = (key, data) ->
    usedFallback = true

    if store.enabled
      # localStorage is supported, definitely use that
      usedFallback = false
      store.set(key, data)

  api.getItem = (key) ->

    if store.enabled
      data = store.get(key)
      if data
        return data

  api.getAll = (key, checkCookie) ->
    defer = $q.defer()

    data = store.get(key)
    if data
      # always resolve with localStorage data when available
      defer.resolve(data)
    else
      defer.resolve()

    defer.promise

  api.removeItem = (key) ->
    if store.enabled
      store.remove(key)

  api
]
