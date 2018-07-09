require.config({
  paths: {
    jquery: './jquery',
    httpclient: './httpclient'
  }
})

require(['jquery', 'httpclient'], function ($, http) {
  $(function () {
    if (window.localStorage.getItem('name')) {
      http.post('./api/car.php', {uname: window.localStorage.getItem('name')}).then(function (res) {
        var res = window.eval('(' + res + ')')
        var data = res.data;

        var goods = data.map(function (item, id) {
          return '<tr data-min="' + id + '" data-id="' + item.id + '">' +
            '<td class="info tl" >' +
            '<a href="javasrcipt"><img src="' + item.imgurl + '"></a>' +
            '<div class="dib">' +
            '<p><a href="./goods.html ' + '?id=' + item.id + '" class="a-title">' + item.title + '</a></p>' +
            '<p class="f12">' +
            '<span class="f-666">礼物款式:狐狸粉 直接购买 (20)</span>' +
            '</p>' +
            '</div>' +
            '</td>' +
            '<td>￥' + item.price + '</td>' +
            '<td>' +
            '<div class="dib count-box">' +
            '<a href="javascript:void(0)" class="icon-bgr icon-sub dib"></a>' +
            '<input type="text" value="' + item.qty + '" class="dib tc icon-number">' +
            '<a href="javascript:void(0)" class="icon-bgr icon-add dib"></a>' +
            '</div>' +
            '</td>' +
            '<td>有库存</td>' +
            '<td id="sub_total_1339962">￥' + item.price * item.qty + '</td>' +
            '<td>' +
            '<a href="javascript:void(0)" class="icon-bgr icon-delete" data-rec_id="1339962"></a>' +
            '</td>' +
            '</tr>'
        })

        $('#cart_list').html(goods)
        $('.shulian').text(data.length)
        zongjia()

        // 商品添加或删除
        $('.count-box').on('click', function (e) {
          var shulian = 0
          var idx = $(this).parent().parent().data('min')
          var id = $(this).parent().parent().data('id')

          if ($(e.target).hasClass('icon-sub')) {
            // 如果小于1就等于1
            if (data[idx].qty <= 1) {
              zongjia()
              return false
            }
            data[idx].qty--
            $(this).find('.icon-number').val(data[idx].qty)
            $(this).parent().siblings('#sub_total_1339962').text('￥' + data[idx].qty * data[idx].price)
            zongjia()
            http.post('./api/carqty.php', {id: id,qty: data[idx].qty})
          }
          if ($(e.target).hasClass('icon-add')) {
            data[idx].qty++
            $(this).find('.icon-number').val(data[idx].qty)
            $(this).parent().siblings('#sub_total_1339962').text('￥' + data[idx].qty * data[idx].price)
            // 修改总价
            zongjia()
            http.post('./api/carqty.php', {id: id,qty: data[idx].qty})
          }
        })

        // 删除
        $('.icon-delete').on('click', function (e) {
          var id = $(this).parent().parent().data('id')
          $(this).parent().parent().remove()
          http.post('./api/carDelet.php', {id: id}).then(function (res) {
            var res = window.eval('(' + res + ')')
            console.log(res)
            if (res.status) {
              var data = res.data
              $('.shulian').text(data.length)
              var shulian = 0
              for (var i = 0; i < data.length;i++) {
                shulian = shulian + (data[i].price * data[i].qty)
              }
              $('#goods-total').text('￥' + shulian)
            }
          })
        })

        // 重新赋值value

        function zongjia () {
          var shulian = 0
          for (var i = 0; i < data.length;i++) {
            shulian = shulian + (data[i].price * data[i].qty)
          }
          $('#goods-total').text('￥' + shulian)
        }
        zongjia()
      })
      var html = '<span class="f-b28850">' + window.localStorage.getItem('name') + '</span>' +
        '<a href="javasrcipt:">个人中心</a>' +
        '<a href="javasrcipt:">我的订单</a>' +
        '<a href="javasrcipt:">浏览历史</a>' +
        '<a href="javasrcipt:" class="clear">退出登录</a>'
      $('.mes').html($(html))

      console.log($('.clear'))
      $('.clear').click(function () {
        console.log(5555)
        window.localStorage.clear()
        setTimeout(function () {
          //  window.location.reload()
          window.location.href = './index.html'
        }, 500)
      })
    }
  })
})
