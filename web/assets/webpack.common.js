const path = require('path');

const CleanWebpackPlugin = require('clean-webpack-plugin');
const WebpackBar = require('webpackbar');

module.exports = {
    entry: ['./src/scripts/main.js', './src/styles/main.scss'],
    output: {
        path: path.resolve(__dirname, 'dist')
    },
    module: {
        rules: [
            {
                test: /\.m?js$/,
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ['@babel/preset-env']
                    }
                }
            },
        ]
    },
    plugins: [
        new WebpackBar({
            profile: true
        }),
        //new CleanWebpackPlugin(['public']),
    ],
    stats: {
        all: undefined,
        assets: false,
        assetsSort: "field",
        builtAt: true,
        cached: false,
        cachedAssets: false,
        children: false,
        chunks: true,
        chunkGroups: false,
        chunkModules: false,
        chunkOrigins: false,
        chunksSort: "field",
        colors: true,
        entrypoints: false,
        env: true,
        errors: true,
        errorDetails: false,
        hash: true,
        maxModules: 15,
        modules: false,
        modulesSort: "field",
        moduleTrace: false,
        performance: true,
        providedExports: false,
        publicPath: false,
        reasons: false,
        source: false,
        timings: true,
        usedExports: false,
        version: true,
        warnings: true,
    }
};