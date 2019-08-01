## Regex
```js
/^The/        //matches any string that starts with The -> Try it!
/end$/        //matches a string that ends with end
/^The end$/   //exact string match (starts and ends with The end)
/roar/        //matches any string that has the text roar in it
```
- References:
  - https://medium.com/factory-mind/regex-tutorial-a-simple-cheatsheet-by-examples-649dc1c3f285


## Middleware
- Middleware functions are the perfect place to modify the req and res objects with relevant information. For instance, after a user has logged in, you could fetch their user details from a database, and then store those details in res.user.
- In short, middleware gives you access to req and res in the apps request-> response cycle.

- References:
  - https://medium.com/@jamischarles/what-is-middleware-a-simple-explanation-bb22d6b41d01

## Web Components
- Web components are a set of web platform APIs that allow you to create new custom, reusable, encapsulated HTML tags to use in web pages and web apps. Custom components and widgets build on the Web Component standards, will work across modern browsers, and can be used with any JavaScript library or framework that works with HTML.

Web components are based on existing web standards. Features to support web components are currently being added to the HTML and DOM specs, letting web developers easily extend HTML with new elements with encapsulated styling and custom behavior.

- References:
  - https://www.webcomponents.org/introduction