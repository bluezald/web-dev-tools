# Vue

## Vue Instance
- every vuew application starts with a new Vue instance
```js
var vm = new Vue({
  // options
})
```
- all Vue components are also Vue instances, and so accept the same options object (except for a few root-specific options).
- When a Vue instance is created, it adds all the properties found in its data object to Vue’s **reactivity system**. When the values of those properties change, the view will “react”, updating to match the new values.

### Instance Lifecycle Hooks
```
Don’t use arrow functions on an options property or callback, such as created: () => console.log(this.a) or vm.$watch('a', newValue => this.myMethod()). Since an arrow function doesn’t have a this, this will be treated as any other variable and lexically looked up through parent scopes until found, often resulting in errors such as Uncaught TypeError: Cannot read property of undefined or Uncaught TypeError: this.myMethod is not a function.
```
### Lifecycle
![Lifecycle](https://vuejs.org/images/lifecycle.png)

## Components
- are reusable Vue Instances with a name.
- the **data** in a component is a function so it can maintain an independent state.

## Essential Vue Tools

- Vue CLI
```
vue create foo
```
- Documentation and API
  - https://vuejs.org/v2/guide/
  - https://vuejs.org/v2/api/

- Vue Extension for Chrome
- Debugger on VSCode


# Advance Topics

## Vuex
![Vuex State Management](https://raw.githubusercontent.com/bluezald/web-dev-tools/master/Random/Vue/vuex-state-management.png)

## Router
- Setup
```js
// inside router/index.js
Vue.use(Router);

export const router = new Router({
  mode: 'history',
  routes: [
    {
      // ...
    }

    // Default route
    { path: '*', redirect: '/' }
  ],
});

router.beforeEach((to, from, next) => {
  const publicPages = [
    '/login',
    '/register',
  ];
  const isPrivatePage = !publicPages.includes(to.path);
  const isLoggedIn = localStorage.getItem('accessToken');

  if (isPrivatePage && !isLoggedIn) {
    return next('/login');
  }

  next();
})
```

- Access params
```js
// url/endpoint/id
const { id } = this.$route.params;
```

- Access query
```js
// url/endpoint?token="..."
const { token } = this.$route.query; // access the query token
```

## Build Targets
```sh
vue-cli-service build --target app # Default / Application
vue-cli-service build --target lib # Library
vue-cli-service build --target wc # Web Component
```