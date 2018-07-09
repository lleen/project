require.config({
  paths: {
    jquery: ['./jquery'],
    http: 'httpclient'
  }
})

require(['jquery', 'http'], function ($, http) {
  $(function () {

    // 轮播图
    var img = $('.j-slideshow .img').children('a').children('img')
    var li = $('.j-slideshow .index li')
    var index = 0
    var time = setInterval(atuoPlay, 2000)

    $('.j-slideshow .index').on('mouseover', function (e) {
      clearInterval(time)
    })
    $('.j-slideshow .index').on('mouseout', function (e) {
      time = setInterval(atuoPlay, 2000)
    })
    for (var i = 0; i < $('.j-slideshow .index').children('li').length;i++) {
      if (i === 0) {
        li.eq(i).addClass('xian')
      }else {
        img.eq(i).css({'display': 'none'})
      }
      (function (i) {
        var tim
        li.eq(i).on('mouseover', function (e) {
          for (var j = 0; j < $('.j-slideshow .index').children('li').length;j++) {
            if (j === i) {
              img.eq(j).css({'display': 'block'})
              li.eq(j).addClass('xian')
              tim = setInterval(function () {index = i;cut(i);}, 500)
            }else {
              li.eq(j).removeClass('xian')
              img.eq(j).css({'display': 'none'})
            }
          }
        })
        li.eq(i).on('mouseout', function (e) {
          clearInterval(tim)
        })
      })(i)
    }

    function cut (idx) {
      for (var j = 0; j < $('.j-slideshow .index').children('li').length;j++) {
        if (j === idx) {
          img.eq(j).css({'display': 'block'})
          li.eq(j).addClass('xian')
        }else {
          li.eq(j).removeClass('xian')
          img.eq(j).css({'display': 'none'})
        }
      }
    }
    function atuoPlay () {
      // 对应的索引值
      index++
      // 避免index超出范围
      if (index >= $('.j-slideshow .index').children('li').length) {
        index = 0
      }
      cut(index)
    }

    // 数据请求
    http.get('api/index.php').then(function (res) {
      var res = window.eval('(' + res + ')')
      if (res.status) {
        var data = res.data
        var goods = []
        var goods2 = []
        var good = []
        var goodBIG = []
        var jixian = []
        var jixianBIG = []
        var comment = []

        for (var i = 0; i < data.length; i++) {
          switch (data[i].type) {
            case 'goods':
              goods.push(data[i])
              break
            case 'goods1':
              goods2.push(data[i])
              break
            case 'good':
              good.push(data[i])
              break
            case 'goodBIG':
              goodBIG.push(data[i])
              break
            case 'jixian':
              jixian.push(data[i])
              break
            case 'jixianBIG':
              jixianBIG.push(data[i])
              break
            case 'comment':
              comment.push(data[i])
          }
        }
        // 人气热卖
        var goods1 = goods.map(function (item, idx) {
          return "<li><a href='./goods.html" + '?id=' + item.id + "'><img src = '" + item.imgurl + "'/></a></li>"
        })
        $('.hot').html(goods1)
        $('.hot').children('li:last-child').addClass('m-w')

        // 人气热卖2
        var hot2 = goods2.map(function (item, idx) {
          return "<div class='fl '><a href='./goods.html" + '?id=' + item.id + "'><img src = '" + item.imgurl + "'/></a></div>"
        })
        $('.hot2').html(hot2)

        // 生日礼物
        var bir = git(good)
        $('.birthdayGift ul').html(bir)
        $('.birthdayGift ul').children('li').addClass('fl')

        var bir2 = "<a href='./goods.html" + '?id=' + goodBIG[0].id + "'><img src = '" + goodBIG[0].imgurl + "'/></a>"
        // 趴趴熊
        $('.birthdayGift div').html(bir2)

        // 吉祥
        var jixian1 = git(jixian)
        $('.originality ul').html(jixian1)
        $('.originality ul li').addClass('fl')
        // 小吉祥
        var jixian2 = "<a href='./goods.html" + '?id=' + jixianBIG[0].id + "'><img src = '" + jixianBIG[0].imgurl + "'/></a>"
        // 趴趴熊
        $('.originality div').html(jixian2)

        var comment1 = git(comment)
        $('.hotGoodslist ul').html(comment1)
        $('.hotGoodslist ul li').addClass('fl')
      }
    })
    function git (data) {
      var goods1 = data.map(function (item, idx) {
        return '<li>' +
          "<a href='./goods.html" + '?id=' + item.id + "'><img src = '" + item.imgurl + "'/></a>" +
          '<p>' + item.title + '</p>' +
          '<p>￥' + item.price + '元</p>'
          + '</li>'
      })
      return goods1
    }

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
