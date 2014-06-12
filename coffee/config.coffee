
# Routes configuration
app.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state("app",
    url: "/app"
    abstract: true
    templateUrl: "templates/menu.html"
    controller: "AppCtrl"
  ).state("app.videos",
    url: "/videos"
    views:
      menuContent:
        templateUrl: "templates/videos.html"
        controller: "VideoCtrl"
  ).state("app.storyDetail",
    url: "/stories/:storyId"
    views:
      menuContent:
        templateUrl: "templates/story.html"
        controller: "StoryDetailCtrl"
  ).state("app.stories",
    url: "/stories"
    views:
      menuContent:
        templateUrl: "templates/stories.html"
        controller: "StoryCtrl"
  ).state("app.forum",
    url: "/forum"
    views:
      menuContent:
        templateUrl: "templates/forum.html"
        controller: "ForumCtrl"
  ).state("app.donate",
    url: "/donate"
    views:
      menuContent:
        templateUrl: "templates/donate.html"
        controller: "DonateCtrl"
  ).state("app.learn",
    url: "/learn"
    views:
      menuContent:
        templateUrl: "templates/learn.html"
        controller: "LearnCtrl"
  ).state("app.about",
    url: "/about"
    views:
      menuContent:
        templateUrl: "templates/about.html"
        controller: "AboutCtrl"
  ).state("app.support",
    url: "/support"
    views:
      menuContent:
        templateUrl: "templates/support.html"
        controller: "SupportCtrl"
  ).state "app.single",
    url: "/learn/:learnId"
    views:
      menuContent:
        templateUrl: "templates/detail.html"
        controller: "DetailCtrl"


  # if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise "/app/learn"
  return
