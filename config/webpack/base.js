const { webpackConfig, merge } = require('@rails/webpacker');
const ForkTSCheckerWebpackPlugin = require('fork-ts-checker-webpack-plugin');

const customConfig = {
  resolve: {
    extensions: ['.css'],
    plugins: [new ForkTSCheckerWebpackPlugin()],
  },
};

module.exports = merge(webpackConfig, customConfig);
