require.config({
  paths: {
    jquery: ['./jquery'],
    http: 'httpclient'
  }
})

require(['jquery', 'http'], function ($, http) {
  $(function () {
    // 发起ajax请求
    http.get('api/products.php').then(function (res) {
      var res = window.eval('(' + res + ')')
      console.log(res)
      if (res.status) {
        function creat (data) {
          var goods = data.map(function (item, id) {
            return '<li class="fl">' +
              '<p class="b-p"><img src="' + item.imgurl + '"></p>' +
              '<p class="m-r"><a href="./biaobaigoods.html'+'?id=' + item.id + '" class="f18 ">' + item.titel + '</a>  <span> ￥ ' + item.pirce + '</span></p>' +
              '<p>' + item.titel + '<a href="javascript:void(0)" class="fr can-diy">可定制</a></p>'
              + '</li>'
          })
          $('.biaobai-ul').html(goods)
        }

        var data = res.data.data1
        creat(data)

        var total = res.data.data2[0]
        for (var key in total) {
          total = total[key]
        }

        var yema = Math.ceil(total / res.data.data1.length)

        // var li = '<li>'
        var str = ''
        for (var i = 1;i <= yema; i++) {
          str += '<a href = "javasrcipt:" class="ye">' + i + '</a >'
        }

        console.log(str)
        $('.yema-div').html(str)

        $('.yema-div').on('click', function (e) {
          if ($(e.target).hasClass('ye')) {
            var pa = Number($(e.target).text())
            pa -= 1

            http.get('api/biaobai.php', {page: pa}).then(function (res) {
              var res = window.eval('(' + res + ')')
              console.log(res)
              var data = res.data.data1;
              window.scrollTo(0,650)
              creat(data)
            })
          }
        })
      }
    })
  })
})
