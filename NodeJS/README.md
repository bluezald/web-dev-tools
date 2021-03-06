# Overview
- Nodejs - async event driven javascript runtime

#### Where is Node.js commonly found
- Microservices and API
- Serverless Cloud Functions
- Commnad line Applications
- Desktop Application

## Event Loops

```
   ┌───────────────────────────┐
┌─>│           timers          │
│  └─────────────┬─────────────┘
│  ┌─────────────┴─────────────┐
│  │     pending callbacks     │
│  └─────────────┬─────────────┘
│  ┌─────────────┴─────────────┐
│  │       idle, prepare       │
│  └─────────────┬─────────────┘      ┌───────────────┐
│  ┌─────────────┴─────────────┐      │   incoming:   │
│  │           poll            │<─────┤  connections, │
│  └─────────────┬─────────────┘      │   data, etc.  │
│  ┌─────────────┴─────────────┐      └───────────────┘
│  │           check           │
│  └─────────────┬─────────────┘
│  ┌─────────────┴─────────────┐
└──┤      close callbacks      │
   └───────────────────────────┘
```

```js
"dependencies": {
   "underscore": "^1.5.1" // ^ Means, it will install the latest version of the major release
   // .. or
   "underscore": "~1.5.1" // ~ Means, it will install the latest version of the minor release
}

```

## To Upgrade NPM
```
npm i npm@latest -g
```

## Publishing your own package
- Setup Repo
- Setup project with `npm init`
- Publish your project by using `npm publish`
- Tag your projectin git

## Updating the version of your package project
```
npm version patch
npm version minor
npm version major
```
Node.js - a wrapper around a VM like `V8`

**CommonJS** - basically the `require` function in Node combined with the `module` object

## Node's REPL
- Read, Eval, Print and Loop

## When updating a new version of node

```
npm rebuild node-sass
sudo npm rebuild node-sass
```
on a project