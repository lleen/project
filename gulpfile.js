const gulp = require('gulp')

// 建立服务器（安装命令 npm install gulp-connect --save-dev)
// 获取服务器的方法
const connect = require('gulp-connect')
gulp.task('server', function () {
  // 配置服务器
  connect.server({
    root: '',
    port: 89,
    livereload: true
  })
})

// 打包
const amdOptimize = require('amd-optimize')
// 合并
const concat = require('gulp-concat')
// 重命名
const rename = require('gulp-rename')
// 压缩
const minjs = require('gulp-uglify')

// 合并压缩
gulp.task('rjs', function () {
  gulp.src('./src/js/*.js') // 路径
    .pipe(amdOptimize('index', { // 打包的开始位置
      paths: {
        'http': './httpclient',
        'jquery': './jquery'
      }
    }))
    .pipe(concat('common.js')) // 合并文件为common.js
    .pipe(gulp.dest('./dist')) // 创建文件夹，并放入
    .pipe(rename('common.min.js')) // 名字为common.min.js
    .pipe(minjs()) // 并压缩
    .pipe(gulp.dest('./dist')) // 并放入文件夹
})

// // goods
// gulp.task('good', function () {
//   gulp.src('./src/js/goods.js') // 路径
//     .pipe(concat('goods.js')) // 合并文件为goods.js
//     .pipe(gulp.dest('./dist')) // 创建文件夹，并放入
//     .pipe(rename('goods.min.js')) // 名字为goods.min.js
//     .pipe(minjs()) // 并压缩
//     .pipe(gulp.dest('./dist')) // 并放入文件夹
// })

// scss
const sass = require('gulp-sass')
gulp.task('sass', function () {
  gulp.src('./src/**/*.scss')
    .pipe(concat('base.scss'))
    .pipe(gulp.dest('./dist'))
    .pipe(sass())
    .pipe(gulp.dest('./dist'))
})
// 自动刷新服务器
gulp.task('auto', function () {
  gulp.watch('./src/*.html', function () {
    gulp.src('./src/*html').pipe(connect.reload())
  })
  gulp.watch('./src/js/*.js', ['rjs'])
  gulp.watch('./src/js/*.js', ['good'])
  gulp.watch('./src/scss/*.scss', ['sass'])
})

// 在控制台，默认输出gulp 启动'server','auto'
gulp.task('default', ['server', 'auto', 'sass', 'rjs'])
