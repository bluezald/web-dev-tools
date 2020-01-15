# Fetch

## fetch vs axios

- One of the main selling points of **Axios is its wide browser support**. Even old browsers like IE11 can run Axios without any issue. Fetch(), on the other hand, only supports Chrome 42+, Firefox 39+, Edge 14+, and Safari 10.1+ (you can see the full compatibly table on Can I use…).

If your only reason for using Axios is backward compatibility, you don’t really need an HTTP library. Instead, you can use fetch() with a polyfill like this to implement similar functionality on web browsers that do not support fetch().

- **Response timeout** is simpler in axios.

- https://blog.logrocket.com/axios-or-fetch-api/