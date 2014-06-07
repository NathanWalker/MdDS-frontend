coffee = require 'gulp-coffee'
coffeelint = require 'gulp-coffeelint'
gulp = require 'gulp'
gutil = require 'gulp-util'
less = require 'gulp-less'
livereload = require 'gulp-livereload'
shell = require 'gulp-shell'
concat = require 'gulp-concat'

gulp.task 'scripts', ->
  gulp.src './lib/*.js'
    .pipe concat('all.js')
    .pipe gulp.dest('./dist/')


files =
  watch:
    less: ['./less/**/*.less']
    js: ['./www/js/**/*.js']
    css: ['./www/css/**/*.css']
    coffee: ['./coffee/**/*.coffee', '*.coffee']
    html: ['./www/**/*.html']
  app:
    coffee_src: './coffee/'
    coffee: ['./coffee/**/*.coffee']
    js: './www/js/'

files.app.coffee = [
  files.app.coffee_src + 'modules/**/*.coffee'
  files.app.coffee_src + 'app.coffee'
  files.app.coffee_src + 'config.coffee'
]
files.app.js_src = files.app.js + 'src/'
files.app.js_concat = [
  files.app.js_src + 'app.js'
  files.app.js_src + 'config.js'
]


gulp.task 'coffee', ->
  gulp.start 'shell_clear'
  gulp.src files.app.coffee
    # .pipe coffeelint()
    # .pipe coffeelint.reporter()
    .pipe coffee({bare: true}).on('error', gutil.log)
    .pipe concat 'all.js'
    .pipe gulp.dest files.app.js
  return


gulp.task 'less', (done)->
  gulp.start 'shell_clear'
  gulp.src './less/index.less'
    .pipe less()
    .pipe gulp.dest './www/css/'
    .on 'end', done
  return


gulp.task 'shell_clear', shell.task 'clear'


gulp.task 'watch', ['less', 'coffee'], ->
  server = livereload 35729

  report = (file)-> server.changed file.path

  # process coffee
  gulp.watch [files.app.coffee], -> gulp.start 'coffee'

  # process less
  gulp.watch [files.watch.less], -> gulp.start 'less'

  # live reload the page
  gulp.watch [
    files.watch.css
    files.watch.js
    files.watch.html
  ]
  .on 'change', (file)-> report file

  return


gulp.task 'default', ['watch']
