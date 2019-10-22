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

## Kubernetes
- Kubernetes automates the process of scaling, managing, updating and removing containers. In other words, it is a container orchestration platform.

- References:
  -  https://containerjournal.com/2019/01/14/kubernetes-vs-docker-a-primer/

## WebSocket
- WebSocket is a computer communications protocol, providing full-duplex communication channels over a single TCP connection

## Storing Secrets in the Environment
- storing database password, access tokens and credentials -- add to a `.env` file

## CORS
- is a mechanism that allows restricted resources on a web page to be requested from another `domain` outside the domain from which the first resource was served.

## CSR vs SSR
- Nice and short explaination of CSR and SSR - https://dev.to/akhilaariyachandra/client-side-rendering-vs-server-side-rendering-2o4o?ref=devawesome.io
