MdDS (Mal de debarquement)
=====================

Mal de debarquement (or Mal de débarquement) syndrome (MdDS, or disembarkment syndrome) is a rare condition usually occurring after a cruise, aircraft flight, or other sustained motion event. It has only recently received attention and very little scientific research has been conducted. The phrase "mal de débarquement" is French for "disembarkation sickness".

## "MdDS" Mobile App (iOS and Android)

Dedicated to improving the lives of those who suffer from this condition by offering education and a way to connect to helpful resources (medical, community, social).

##### Contributing

If you would like to contibute, continue along to setup the project and please submit pull requests.

###Setup

	npm install
	bower install


#####Add native platform:

    ionic platform ios

#####Add native plugins:

*We have a hook for this but unfortunately it does **not** work due to timing issues with installing plugins.
If you feel like you can fix it, you can find it in the `hooks_dont_work` folder.*

For now, install manually with the following:

    cordova plugin add org.apache.cordova.console
    cordova plugin add org.apache.cordova.device
    cordova plugin add org.apache.cordova.geolocation
    cordova plugin add org.apache.cordova.inappbrowser
    cordova plugin add org.apache.cordova.network-information
    cordova plugin add org.apache.cordova.splashscreen
    cordova plugin add org.apache.cordova.statusbar
    cordova plugin add https://github.com/driftyco/ionic-plugins-keyboard.git
    cordova plugin add https://github.com/Initsogar/cordova-activityindicator
    cordova plugin add https://git-wip-us.apache.org/repos/asf/cordova-plugin-vibration.git
    cordova plugin add https://git-wip-us.apache.org/repos/asf/cordova-plugin-dialogs.git


#####If you want to preview the build in a browser, you can `cd` into `/www` and run:

    python -m SimpleHTTPServer

#####Run the app:

    ionic build ios
    ionic emulate ios



