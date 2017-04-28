var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('default', function() {
  return gulp.src('./assets/sass/*.sass')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('./public/css'))
});

gulp.task('watch', function() {
  gulp.watch('./assets/sass/*.sass', ['default']);
});