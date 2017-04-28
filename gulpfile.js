var gulp = require('gulp');
var sass = require('gulp-sass');
var minifyCSS = require('gulp-csso');
var gzip = require('gulp-gzip');

gulp.task('default', function() {
  return gulp.src('./assets/sass/*.sass')
    .pipe(sass().on('error', sass.logError))
    .pipe(gzip())
    .pipe(gulp.dest('./public/css'))
});

gulp.task('watch', function() {
  gulp.watch('./assets/sass/*.sass', ['default']);
});