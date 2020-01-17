# Webpack
At its core, webpack is a static module bundler for modern JavaScript applications. When webpack processes your application, it internally builds a dependency graph which maps every module your project needs and generates one or more bundles.

**The Need to Build**
- Modern web-apps grow and require a need for build
- Combine files for `dist`
- a need for compression (minify)
- a need for file-orfer dependencies
- transpilation - change the code to support the older version supported in the browser
- Linting
- Combine js and css files

### Module Systems
- the use of `require()`

## Core Concepts
* Entry - indicates which module webpack should use to begin building out its internal dependency graph
  - By default its value is `./src/index.js`, but you can specify a different (or multiple entry points) by setting an entry property in the webpack configuration. For example:
  ```js
  module.exports = {
    entry: './path/to/my/entry/file.js'
  };
  ```
* Output - tells webpack where to emit the bundles it creates and how to name these files. It defaults to `./dist/main.js` for the main output file and to the `./dist` folder for any other generated file
  ```js
  const path = require('path');

  module.exports = {
    entry: './path/to/my/entry/file.js',
    output: {
      path: path.resolve(__dirname, 'dist'),
      filename: 'my-first-webpack.bundle.js'
    }
  };
  ```
* Loaders - webpack only understands JS and JSON files. Loaders allow webpack to process other types
  - At a high level, loaders have two properties in your webpack configuration:
    - The **test** property identifies which file or files should be transformed.
    - The **use** property indicates which loader should be used to do the transforming.
    ```js
    const path = require('path');
    module.exports = {
      output: {
        filename: 'my-first-webpack.bundle.js'
      },
      module: {
        rules: [
          { test: /\.txt$/, use: 'raw-loader' }
        ]
      }
    };
    ```
* Plugins
* Mode
* Browser Compatibility

