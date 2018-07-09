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
    var d = document.querySelector('.d')
    var un = document.querySelector('.un')
    var username = $('#username').val().trim()
    var password = $('#password').val().trim()
    var unpassword = $('#unpassword').val().trim()

    fo.onchange = function (e) {
      var username = $('#username').val().trim()
      var password = $('#password').val().trim()
      var unpassword = $('#unpassword').val().trim()
      if (e.target.id === 'username') {
        if (/^[\da-z\-\.]{3,}@[\da-z\-]{2,63}(\.[a-z]{2,6})+$/i.test(username) || /^1[3-8]\d{9}$/i.test(username)) {
          s.innerText = ''
        }else {
          s.innerText = '你输入的用户名格式错误'
          return false
        }
      }
      if (e.target.id === 'password') {
        if (!/^[^\s]{6,20}$/i.test(password)) {
          d.innerText = '密码格式错误'
          return false
        }else {
          d.innerText = ''
        }
      }
      if (e.target.id === 'unpassword') {
        if (unpassword !== password) {
          un.innerText = '两次密码不一致'
        }else {
          un.innerText = ''
        }
      }
    }

    var btnRegist = document.querySelector('#btn-register')
    btnRegist.onclick = function (e) {
      var username = $('#username').val().trim()
      var password = $('#password').val().trim()
      var unpassword = $('#unpassword').val().trim()
      if ((/^[\da-z\-\.]{3,}@[\da-z\-]{2,63}(\.[a-z]{2,6})+$/i.test(username) || /^1[3-8]\d{9}$/i.test(username)) && /^[^\s]{6,20}$/i.test(password) && unpassword === password) {
        http.post('./api/register.php', {uname: username,pwd: password}).then(function (res) {
          var res = window.eval('(' + res + ')');
          if (res.st) {
            localStorage.setItem('name',username);
            window.location.href = './index.html';
          }else{
              s.innerHTML = '用户已经注册';
          }
        })
      }
    }
  })
})
