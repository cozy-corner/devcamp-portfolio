const { environment } = require('@rails/webpacker')
const coffee =  require('./loaders/coffee')

environment.loaders.prepend('coffee', coffee)
module.exports = environment

const webpack = require('webpack')
environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        // myApp.jsから使用する場合 Common.jsを読み込む
        html5sortable: 'html5sortable/dist/html5sortable.cjs.js'
    })
)