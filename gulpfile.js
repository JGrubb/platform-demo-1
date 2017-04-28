var gulp = require('gulp');
var sass = require('gulp-sass');
var gzip = require('gulp-gzip');

gulp.task('css', function() {
  return gulp.src('./assets/sass/*.sass')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('./public/css'));
});

gulp.task('watch', function() {
  gulp.watch('./assets/sass/*.sass', ['css']);
});

gulp.task('gzip', function() {
  return gulp.src('./assets/sass/*.sass')
    .pipe(sass().on('error', sass.logError))
    .pipe(gzip())
    .pipe(gulp.dest('./public/css'));
});

gulp.task('default', ['css', 'gzip']);