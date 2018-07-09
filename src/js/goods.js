require.config({
  paths: {
    jquery: './jquery',
    httpclient: './httpclient',
    magnifying: './magnifying'
  }
})

require(['jquery', 'httpclient', 'magnifying'], function ($, http, magnifying) {
  $(function () {
    // 获取url
    var url = location.search
    var idx = url.indexOf('?')
    var cansu = url.slice(idx + 1)
    cansu = cansu.split('=')
    http.get('api/goods.php', {id: cansu[1]}).then(function (res) {
      var res = window.eval('(' + res + ')')
      if (res.status) {
        var data = res.data
        $('.jiesao h2').html($('<h2>' + data[0].title + '</h2>'))
        $('.jiesao  p:nth-child(2)').html($('<p>' + data[0].introduce + '</p>'))
        $('.jiesao  p:nth-child(3)').text(data[0].price + ' - ' + data[0].price + ' 元 ')
        $('<span>有现货</span>').addClass('fr').appendTo($('.jiesao  p:nth-child(3)'))
        var datas = data[0].GiftItems
        datas = datas.split(',')
        var p = datas.map(function (item) {
          return '<a href="javasrcipt:" class="a-ks">' + item + '</a>'
        })
        $('.xuanzhe').html(p)

        var imgsmall = data[0].img1.split(',')
        var small = tu(imgsmall)
        $('.xiaotu').html(small)

        var imgbig = data[0].imgbig.split(',')
        var big = tu(imgbig)
        $('.bigtu').html(big)


        magnifying.initialize($('.bigtu'))
          // 鼠标进入
          $('.bigtu').mouseenter(function (e) {
            e = e.target
            if (!e.src) {
              // 鼠标在父对象边框进入的情况
              // src将获取不到
              e = $('img', e)[0]
            }
            magnifying.into(e.src)
          })
          // 鼠标离开
          $('.bigtu').mouseleave(function (e) {
            magnifying.leave()
          })
          // 鼠标移动
          $('.bigtu').mousemove(function (e) {
            magnifying.mover(e)
          })

        // 商品选择
        var itrm
        // console.log($('.a-ks'))

        $('.a-ks').on('click', function (e) {
          // 先清空 
          $('.a-ks').removeClass('xian')
          $(e.target).addClass('xian')
          itrm = $(e.target).text()
        })

        $('.btn-goods').on('click', function (e) {
          if ($(e.target).hasClass('a1')) {
            if (itrm !== '' && window.localStorage.getItem('name')) {
              http.post('./api/carlist.php', {
                id: data[0].id,
                // GiftItems: itrm,
                username: window.localStorage.getItem('name')
              }).then(function (res) {
                window.location.href = './car.html'
              })
            }else {
              alert('请登录!!!!')
              return false
            }
          }
        })

        // 图片点击切换
        // 轮播图
        var imgSMALL = $('.xiaotu img')
        var imgBIG = $('.bigtu img')
        for (var i = 0; i < $('.xiaotu img').length;i++) {
          if (i === 0) {
            imgSMALL.eq(i).addClass('xian')
          }else {
            imgBIG.eq(i).css({'display': 'none'})
          }
          (function (i) {
            imgSMALL.eq(i).on('mouseover', function (e) {
              for (var j = 0; j < $('.xiaotu img').length;j++) {
                if (j === i) {
                  imgBIG.eq(j).css({'display': 'block'})
                  imgSMALL.eq(j).addClass('xian')
                }else {
                  imgSMALL.eq(j).removeClass('xian')
                  imgBIG.eq(j).css({'display': 'none'})
                }
              }
            })
          })(i)
        }
      }
      function tu (img) {
        var small = img.map(function (item) {
          return '<img src="' + item + '"/>'
        })
        return small
      }
    })

    // 读取localStorage
    if (window.localStorage.getItem('name')) {
      var name = window.localStorage.getItem('name')
      $('.yh').html('<a href="javasrcipt"></a>').text(name)
      var a = '<a href="javasrcipt:" class="clear"> 退出登录</a>'
      $(a).appendTo($('.user-signin .tc  dd:last-child'))
      http.post('./api/car.php', {uname: name}).then(function (res) {
        var res = window.eval('(' + res + ')')
        console.log(res)
        var data = res.data
        var goods = data.map(function (item, id) {
          return '<tr class="gs">' +
            '<td width="25%"><a href="goods.php ?id=' + item.id + '  "><img width="60px" src="' + item.imgurl + '"></a></td>' +
            '<td class="overtxt" width="50%"><a href="goods.php ?id=' + item.id + '  ">' + item.title + '</a><br>礼物款式:狐狸蓝 直接购买</td>' +
            '<td class="tr" width="25%"> x' + item.qty + '<br>￥' + item.price + '<br><a class="remove_item" data-rec-id="1339972" href="javascript:void(0)">删除</a></td>'
            + '</tr>'
        })
        $('.showlist').html(goods)
        var html = '<div class="clearfix g"><div width="100%"><div class="clearfix m-t-10"><span class="fl">共计1件商品<br><b>合计：<span class="f-d93732">￥336.0</span></b></span><a href="./car.html" class="fr btn-red-sml ani-bg">去购物车结算</a></div></div></div>'
        $(html).appendTo($('.showlist'))
      })

      // 清除，退出登录按钮
      $('.clear').click(function () {
        window.localStorage.clear()
        $('.yh').html('<a href="./login.html">登录</a>/<a href="./reaister.html">注册</a>')
        $('.showlist').html().text('购物车中还没有商品，赶紧选购吧！')
      })
    }else {
      return
    }
  })
})
