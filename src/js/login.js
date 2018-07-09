require.config({
  paths: {
    jquery: './jquery',
    httpclient: './httpclient'
  }
})

require(['jquery', 'httpclient'], function ($, http) {
  $(function () {
    var fo = document.querySelector('#fo')
    var s = document.querySelector('.p')
    // console.log(fo)
    // fo.onchange = function (e) {
    //   var username = $('#username').val().trim()
    //   var password = $('#password').val().trim()

    //   if (e.target.id === 'username') {
    //     if (/^[\da-z\-\.]{3,}@[\da-z\-]{2,63}(\.[a-z]{2,6})+$/i.test(username) || /^1[3-8]\d{9}$/i.test(username)) {
    //       s.innerText = '你输入的用户名格式正确'
    //     }else {
    //       s.innerText = '你输入的用户名格式错误'
    //       return false
    //     }
    //   }
    // }

    $('#btn-login').on('click', function () {
      var username = $('#username').val()
      var password = $('#password').val().trim()
      if (username != '' && password != '') {
        // 获取用户名密码
        // 获取url
        http.post('api/login.php',
          {
            uname: $('#username').val().trim(),
            pwd: $('#password').val().trim()
          }
        ).then(function (res) {
          var res = window.eval('(' + res + ')')
          // console.log(5555)
          if (res.status) {
            console.log(5555)
            var data = res.data[0].username;
            console.log(data)
            window.localStorage.setItem('name', data);
            window.location.href = './index.html'
          }else{
              alert('用户密码错误');
          }
        });
      }
    })
  })
})
