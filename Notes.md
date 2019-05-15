// TODO: will organize accordingly as this grows

# Frontend
- https://frontendmasters.com/books/front-end-handbook/2019/#1.1
- A front-end developer architects and develops websites and web applications using web technologies (i.e., HTML, CSS, and JavaScript), which typically runs on the Open Web Platform or acts as compilation input for non-web platform environments (i.e., React Native).

**Headless browsers** are a web browser without a graphical user interface that can be controlled from a command line interface programmatically for the purpose of web page automation (e.g., functional testing, scraping, unit testing, etc.). Think of headless browsers as a browser that you can run programmatically from the command line that can retrieve and traverse web page code.

- A short word of advice on learning. Learn the actual underlying technologies, before learning abstractions. Don't learn jQuery, learn the DOM. Don't learn SASS, learn CSS. Don't learn JSX, learn HTML. Don't learn TypeScript, learn JavaScript. Don't learn Handlebars, learn JavaScript ES6 templates. Don't just use Bootstrap, learn UI patterns.

**Rendering**
- http://frontendbabel.info/articles/webpage-rendering-101/

### Service Workers
- is a script that your browser runs in the background, separate from a web page, opening the door to features that don't need a web page or user interaction. Today, they already include features like push notifications and background sync.

## Debugging
### console
 - https://medium.freecodecamp.org/how-to-use-the-javascript-console-going-beyond-console-log-5128af9d573b

# Webhooks
- send a signal when a specified event occurs
- The listener is the URL which receives the webhooks and performs a predefined action after that.
- Webhooks are basically user defined HTTP callbacks (or small code snippets linked to a web application) which are triggered by specific events. Whenever that trigger event occurs in the source site, the webhook sees the event, collects the data, and sends it to the URL specified by you in the form of an HTTP request. You can even configure an event in one site to trigger an action in another site.
- the fundamental difference between API calls and webhooks is that while the former works on request-based output mechanisms, and the latter works on event-based output mechanisms.
- The benefits of webhooks in a nutshell – instant, real-time notifications.

- References
    - https://www.chargebee.com/blog/what-are-webhooks-explained/
