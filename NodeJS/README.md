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