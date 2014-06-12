angular.module("Video").provider("Videos", ->

  $get: ($window) ->
    api = {}

    api.list = [
      {
        id:1
        title:"The Doctors - Sea Sickness on Land"
        url:"http://htedge.arcostream.com/000844/www.thedoctorstv.com/Feature/11412/ProcamD6137_Sea_Sickness_on_Land_med.mp4"
      }
    ]

    api

)
