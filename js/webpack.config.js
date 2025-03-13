const webpack = require('webpack');
const path = require('path');

const config = {
  entry: './src/index.js',
  mode: 'production',
  output: {
    path: path.join(__dirname, '..', 'inst', 'nextui-2.7.4'),
    filename: 'nextui.js'
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        use: [
          'style-loader',
          'css-loader'
        ]
      },
      {
        test: /\.(js|jsx)$/,
        use: [
          'babel-loader'
        ]
      }
    ]
  },
  externals: {
    'react': 'jsmodule["react"]',
    'react-dom': 'jsmodule["react-dom"]',
    '@/shiny.react': 'jsmodule["@/shiny.react"]'
  }
};

module.exports = config;
