# Random Section
- This directory is use for random but important code and note-taking. That is not yet organize

## npx vs npm
- npx is a npm package runner (x probably stands for eXecute). The typical use is to download and run a package temporarily or for trials.
- npm by itself does not simply run any package. it doesn't run any package in a matter of fact. If you want to run a package using NPM, you must specify that package in your package.json file.

When executables are installed via NPM packages, NPM links to them:

local installs have "links" created at ./node_modules/.bin/ directory.
global installs have "links" created from the global bin/ directory (e.g. /usr/local/bin) on Linux or at %AppData%/npm on Windows.

## npm vs nodejs
-  node.js runtime is basically what will understand your javascript code and execute it to produce a result.
- npm package manager is a tool which will allow you to install third party libraries (other people's code)

- References:
  - https://stackoverflow.com/questions/50605219/difference-between-npx-and-npm