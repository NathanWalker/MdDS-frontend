#!/usr/bin/env node

//
// This hook copies various resource files
// from our version control system directories
// into the appropriate platform specific location
//


// platform_resure all the files to copy.
// Key of object is the source file,
// value is the destination location.
// It's fine to put all platforms' icons
// and splash screen files here, even if
// we don't build for all platforms
// on each developer's box.

console.log("HOOK: Copying icons into platform");

var filestocopy = [{
    "platform_res/ios/Resources/icons/icon-40.png":
    "platforms/ios/MdDS/Resources/icons/icon-40.png"
}, {
    "platform_res/ios/Resources/icons/icon-40@2x.png":
    "platforms/ios/MdDS/Resources/icons/icon-40@2x.png"
}, {
    "platform_res/ios/Resources/icons/icon-50.png":
    "platforms/ios/MdDS/Resources/icons/icon-50.png"
}, {
    "platform_res/ios/Resources/icons/icon-50@2x.png":
    "platforms/ios/MdDS/Resources/icons/icon-50@2x.png"
}, {
    "platform_res/ios/Resources/icons/icon-60.png":
    "platforms/ios/MdDS/Resources/icons/icon-60.png"
}, {
    "platform_res/ios/Resources/icons/icon-60@2x.png":
    "platforms/ios/MdDS/Resources/icons/icon-60@2x.png"
}, {
    "platform_res/ios/Resources/icons/icon-72.png":
    "platforms/ios/MdDS/Resources/icons/icon-72.png"
}, {
    "platform_res/ios/Resources/icons/icon-72@2x.png":
    "platforms/ios/MdDS/Resources/icons/icon-72@2x.png"
}, {
    "platform_res/ios/Resources/icons/icon-76.png":
    "platforms/ios/MdDS/Resources/icons/icon-76.png"
}, {
    "platform_res/ios/Resources/icons/icon-76@2x.png":
    "platforms/ios/MdDS/Resources/icons/icon-76@2x.png"
}, {
    "platform_res/ios/Resources/icons/icon-small.png":
    "platforms/ios/MdDS/Resources/icons/icon-small.png"
}, {
    "platform_res/ios/Resources/icons/icon-small@2x.png":
    "platforms/ios/MdDS/Resources/icons/icon-small@2x.png"
}, {
    "platform_res/ios/Resources/icons/icon.png":
    "platforms/ios/MdDS/Resources/icons/icon.png"
}, {
    "platform_res/ios/Resources/icons/icon@2x.png":
    "platforms/ios/MdDS/Resources/icons/icon@2x.png"
}, {
    "platform_res/ios/Resources/splash/Default-568h@2x~iphone.png":
    "platforms/ios/MdDS/Resources/splash/Default-568h@2x~iphone.png"
}, {
    "platform_res/ios/Resources/splash/Default-Landscape@2x~ipad.png":
    "platforms/ios/MdDS/Resources/splash/Default-Landscape@2x~ipad.png"
}, {
    "platform_res/ios/Resources/splash/Default-Landscape~ipad.png":
    "platforms/ios/MdDS/Resources/splash/Default-Landscape~ipad.png"
}, {
    "platform_res/ios/Resources/splash/Default-Portrait@2x~ipad.png":
    "platforms/ios/MdDS/Resources/splash/Default-Portrait@2x~ipad.png"
}, {
    "platform_res/ios/Resources/splash/Default-Portrait~ipad.png":
    "platforms/ios/MdDS/Resources/splash/Default-Portrait~ipad.png"
}, {
    "platform_res/ios/Resources/splash/Default.png":
    "platforms/ios/MdDS/Resources/splash/Default.png"
}, {
    "platform_res/ios/Resources/splash/Default@2x~iphone.png":
    "platforms/ios/MdDS/Resources/splash/Default@2x~iphone.png"
}, {
    "platform_res/ios/Resources/splash/Default~iphone.png":
    "platforms/ios/MdDS/Resources/splash/Default~iphone.png"
}];

var fs = require('fs');
var path = require('path');

// no need to platform_resure below
var rootdir = process.argv[2];

filestocopy.forEach(function(obj) {
    Object.keys(obj).forEach(function(key) {
        var val = obj[key];
        var srcfile = path.join(rootdir, key);
        var destfile = path.join(rootdir, val);
        //console.log("copying "+srcfile+" to "+destfile);
        var destdir = path.dirname(destfile);
        if (fs.existsSync(srcfile) && fs.existsSync(destdir)) {
            fs.createReadStream(srcfile).pipe(
               fs.createWriteStream(destfile));
        }
    });
});
