const path = require('path');

const merge = require('webpack-merge');
const common = require('./webpack.common.js');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = merge(common, {
    mode: 'development',
    devServer: {
        contentBase: path.join('public'),
        watchContentBase: true,
        port: 9000,
        stats: 'errors-only',
        proxy: {
            '/': 'http://localhost:8080/covoit_war_exploded/'
        }
    },
    output: {
        path: path.resolve('../dist'),
        filename: 'scripts/[name].js',
    },
    module: {
        rules: [
            {
                test: /\.(sa|sc|c)ss$/,
                use: [
                    'style-loader',
                    'css-loader',
                    'postcss-loader',
                    'sass-loader',
                ],
            }
        ]
    },
    plugins: [
        new HtmlWebpackPlugin({
            filename: path.resolve(__dirname, '../tags/template_base.tag')
        })
    ],
});
