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

### Slots
- For example you have a component that accepts inner text or component
```js
<navigation-link url="/profile">
  Your Profile
</navigation-link>
```
- the template could look like this:
```js
<a v-bind:href="url" class="nav-link">
  <slot></slot>
</a>
```

### Lazy Loading Components
```js
const Category = () => import('./theme/Category.vue')

//...

const router = new VueRouter({
    routes: [
        // .. Other Routes
        { path: '/category/:id', name: 'category', component: Category },
        // .. Other Routes
    ]
})
```

## Binding
- Binding Modifiers:
    - Trim
    - Number
    - Lazy
```html
<!-- Removes whitespaces -->
<input v-model.trim="query" />
<!-- Converts to number -->
<input v-model.number="query" />
<!-- Lazily bind the input until input loses focus -->
<input v-model.lazy="query" />
```

## Watchers
- When you have some data that needs to change based on some other data
- This is most useful when you want to perform asynchronous or expensive operations in response to changing data.
- watch option allows us to perform an asynchronous operation (accessing an API), limit how often we perform that operation, and set intermediary states until we get a final answer

```js
<script src="https://cdn.jsdelivr.net/npm/axios@0.12.0/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/lodash@4.13.1/lodash.min.js"></script>

var watchExampleVM = new Vue({
  el: '#watch-example',
  data: {
    question: '',
    answer: 'I cannot give you an answer until you ask a question!'
  },
  watch: {
    // whenever question changes, this function will run
    question: function (newQuestion, oldQuestion) {
      this.answer = 'Waiting for you to stop typing...'
      this.debouncedGetAnswer()
    }
  },
  created: function () {
    this.debouncedGetAnswer = _.debounce(this.getAnswer, 500)
  },
  methods: {
    getAnswer: function () {
      if (this.question.indexOf('?') === -1) {
        this.answer = 'Questions usually contain a question mark. ;-)'
        return
      }
      this.answer = 'Thinking...'
      var vm = this
      axios.get('https://yesno.wtf/api')
        .then(function (response) {
          vm.answer = _.capitalize(response.data.answer)
        })
        .catch(function (error) {
          vm.answer = 'Error! Could not reach the API. ' + error
        })
    }
  }
})
</script>
```


## Events

### Modifiers
- Event Propagation
    - Bubbling - propagates from children to parent
    - Capturing - propagates from parent to children
```html
<div v-on:click.capture="grandparentClick">
    <div v-on:click.capture="parentClick">
        <button v.on:click.capture="executeSearch">Search</button>
    </div>
</div>
```
- Prevent
```html
<!-- submit type button causes the page to reload -->
<button type="submit" @click="executeSearch">Search</button>
<!-- to prevent a click that does not load the page, you can use -->
<button type="submit" @click.prevent="executeSearch">Search</button>
```
- Stop - ceases event propagation
```html
<!-- stops the event propagation -->
<button type="submit" @click.stop="executeSearch">Search</button>
```
- Once - only detaches from the event handler to the containing element

- Creating Key Modifiers
```js
Vue.config.keyCodes = {
    f1: 112
};
```
```html
<!-- Usage -->
<div v-on:keydown.f1="openInfo">
</div>
```
- Mouse Button Events
```html
<div v-on:mousedown.left="onClick">
</div>
```

![Event Modifier Impact](https://raw.githubusercontent.com/bluezald/web-dev-tools/master/Frontend/Vue/event-modifier-impact.png)

- Reacting to Special Keys with function chaining
```html
<input type="search"
    v-model.trim="query"
    v-on:keypress.enter.prevent="executeNewSearch"
    v-on:keyup.ctrl.enter="executeSearchInNewWindow"
    placeholder="Please enter your query" />
```

### Watchers, Computed Properties and Filters
- Watchers
```js
<script>
export default {
  data() {
    return {
      name: 'Flavio'
    }
  },
  methods: {
    changeName: function() {
      this.name = 'Flavius'
    }
  },
  watch: {
    name: function() {
      console.log(this.name)
    }
  }
}
</script>
```

- filters
```js
filters: {
  capitalize: function (value) {
    if (!value) return ''
    value = value.toString()
    return value.charAt(0).toUpperCase() + value.slice(1)
  }
}
```


- References:
    - https://flaviocopes.com/vue-watchers/



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

- **Mounting Options**
    - attachToDocument - Component will be attached to DOM when rendered if set to true
        - make sure you use attachToDocument: true when working with window and DOM-Events.
        - When attaching to the DOM, you should call **wrapper.destroy()** at the end of your test to remove the rendered elements from the document and destroy the component instance.


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