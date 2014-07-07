angular.module("Press").provider("PressList", ->

  $get: ($window) ->
    api = {}

    api.pressById = (id) ->
      for s in api.list
        if s.id is id
          return s
          break

    api.list = [
      {
        id:1
        title:"ABC 7 Eyewitness News: Rare disorder gives illusion of being in motion long after travel"
        url:'http://abc7.com/archive/8389660/'
      },
      {
        id:2
        title:"ABC News: Medical Mystery: Disembarkment Syndrome"
        url:'http://abcnews.go.com/Health/story?id=2817081'
      },
      {
        id:3
        title:"New York Headache Blog"
        url:'http://www.nyheadache.com/blog/mal-de-debarquement-syndrome/'
      },
      {
        id:4
        title:"The Telegraph: Middle Georgia's News Source"
        url:'http://www.macon.com/2014/06/17/3154661/when-you-cant-get-off-the-boat.html'
      }
    ]

    api
)
