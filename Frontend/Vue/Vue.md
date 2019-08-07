# Vue

- to change port in Vue:
```js
// vue.config.js
module.exports = {
  // ...
  devServer: {
    open: process.platform === 'darwin',
    host: '0.0.0.0',
    port: 8080, // CHANGE YOUR PORT HERE!
    https: false,
    hotOnly: false,
  },
  // ...
}
```

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

## Testing
- **shallowMount()** - is a Vue test utils method to create a shallow wrapper component (using shallow rendering to avoid rendering children components)
- **beforeEach()** - is a Jest method which executes the callback argument before each of the tests

### Testing Methods that cover most types of unit testing
- **Existence of DOM Elements**
```js
test('has blah class', () => {
    expect(wrapper.contains('.blah')).toBe(true);
});

// check multiple elements by verifying count
test('has blah classes', () => {
    expect(wrapper.findAll('.blah').length).toBe(10);
});
```
- **DOM action events**
```js
test('emit events when close-btn clicked', () => {
    const closeBtn = wrapper.find('.close-btn');
    closeBtn.trigger('click');
    expect(wrapper.emitted().close.length).toBe(1);
});
```
- **Accessing Vue wrapper properties**
```js
let wrapper;
const factory = (computed = {}) => {
    shallowMount(Component, {
        propsData: {},
        mocks: {},
        stubs: {},
        methods: {},
        computed,
    });
};

beforeEach(() => {
    wrapper = factory();
});

...

test('changing computed property should be updated', () => {
    wrapper = factory({ myProperty: 'test' });
    expect(wrapper.vm.myProperty).toBe('test');
});
```

- **Mocking methods and modules**
```js
beforeEach(() => {
    actions = {
        someAction: jest.fn(() => true)
    };
    mutations = {
        someMutation: jest.fn(() => false)
    };
    state = {
        key: {}
    };
    store = new Vuex.Store({
        actions,
        mutations,
        state,
    });
});


// using jest.fn() to mock component method or another other global functions
test('clicking search button triggers search()', () => {
    window.open = jest.fn(); // global function mock to stop actual from executing
    wrapper.vm.search = jest.fn();
    const searchBtn = '.search-btn';
    wrapper.find(searchBtn).trigger('click');
    expect(wrapper.vm.search).toBeCalled();
});
```
- **Async callbacks**
```js
test('check async block', async() => {
    await wrapper.vm.asyncFunction(); // where asyncFunction() has a resolved Promise or other async stuff
});
```

- References:
  - https://medium.com/swlh/tips-on-unit-testing-vue-components-with-jest-e68ff6a28bb5