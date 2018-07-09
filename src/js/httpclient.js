    // 配置，引入jquery
    require.config({
    paths: {
        jquery: ['./jquery']
    }
    })

    // 引用jquery叫做定义前的依赖引用, 定义一个模块
    define(['jquery'], function ($, londing) {
        var baseUrl = 'http://10.3.136.224:32/src/';
        function filterUrl (_url) {
            if (_url.startsWith('http')) {
            return _url
            }else {
            return baseUrl + _url
            }
        }
        return {
            get: function (_url, data) {
            // 用promise来处理ajax请求
                return new Promise(function (resolve, reject) {
                    // 发起ajxa请求
                    $.ajax({
                    url: filterUrl(_url),
                    data: data || {},
                    headers: {
                        Authorization: 'Bearer ' + window.localStorage.getItem('access_token')
                    },
                    beforeSend: function () {
                      
                    },
                    success: function (res) {
                        // 成功执行
                        resolve(res)

                    },
                    error: function (error) {
                        reject(error)
                    }
                    })
                })
            },
            post: function (_url, data) {
            // 用promise来处理ajax请求
                return new Promise(function (resolve, reject) {
                    // 发起ajxa请求
                    $.ajax({
                    url: filterUrl(_url),
                    data: data || {},
                    type: 'post',
                    headers: {
                        Authorization: 'Bearer ' + window.localStorage.getItem('access_token')
                    },
                    beforeSend: function () {

                    },
                    success: function (res) {
                        // 成功执行
                        resolve(res)
                    },
                    error: function (error) {
                        reject(error)
                    }
                    })
                })
            }
        }
    })


