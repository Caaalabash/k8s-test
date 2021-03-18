module.exports = {
    lintOnSave: false,
    publicPath: '/',
    productionSourceMap: false,
    css: {
        sourceMap: false,
        extract: false
    },
    devServer: {
        // 出于安全考虑, 默认检查hostname, 如果不匹配, 将中断访问, 此处关闭
        disableHostCheck: true,
        host: '0.0.0.0',
        proxy: {
            // 开发端口转发
            '/api': {
                // target: 'http://10.10.5.185:3007',
                target: 'http://127.0.0.1:3000',
                pathRewrite: { '^/api' : '' }
            },
        }
    },
}
