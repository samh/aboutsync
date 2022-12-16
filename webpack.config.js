module.exports = {
  entry: "./src/main.jsx",
  output: {
    filename: "build.js",
    path: `${__dirname}/data`,
  },
  resolve: {
    extensions: [".js", ".jsx"],
  },
  devtool: false,
  module: {
    rules: [
      {
        test: /\.?jsx$/,
        exclude: /node_modules/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/preset-env", "@babel/preset-react"],
          },
        },
      },
      {
        test: /\.css$/,
        use: [
          "style-loader",
          "css-loader", // for styles
        ],
      },
    ],
  },
};
