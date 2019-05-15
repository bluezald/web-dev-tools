// TODO: will organize accordingly as this grows

# Frontend
- https://frontendmasters.com/books/front-end-handbook/2019/#1.1
- A front-end developer architects and develops websites and web applications using web technologies (i.e., HTML, CSS, and JavaScript), which typically runs on the Open Web Platform or acts as compilation input for non-web platform environments (i.e., React Native).

**Headless browsers** are a web browser without a graphical user interface that can be controlled from a command line interface programmatically for the purpose of web page automation (e.g., functional testing, scraping, unit testing, etc.). Think of headless browsers as a browser that you can run programmatically from the command line that can retrieve and traverse web page code.

- A short word of advice on learning. Learn the actual underlying technologies, before learning abstractions. Don't learn jQuery, learn the DOM. Don't learn SASS, learn CSS. Don't learn JSX, learn HTML. Don't learn TypeScript, learn JavaScript. Don't learn Handlebars, learn JavaScript ES6 templates. Don't just use Bootstrap, learn UI patterns.

![Timeline of Web Browsers](https://upload.wikimedia.org/wikipedia/commons/7/74/Timeline_of_web_browsers.svg)

**Rendering**
- http://frontendbabel.info/articles/webpage-rendering-101/
- Forces the layout / reflow - https://gist.github.com/paulirish/5d52fb081b3570c81e3a

**DNS**
- https://howdns.works/ep1/
- Domain names are a key part of the Internet infrastructure. They provide a human-readable address for any web server available on the Internet.

### HTTP

**HTTP Status Codes**

- https://httpstatuses.com/

**1xx Informational**|**2xx Success**|**3xx Redirection**|**4xx Client Error**|**5xx Server Error**
:-----:|:-----:|:-----:|:-----:|:-----:
100 Continue|200 OK|300 Multiple Choices|400 Bad Request|500 Internal Server Error
101 Switching Protocols|201 Created|301 Moved Permanently|401 Unauthorized|501 Not Implemented
102 Processing|202 Accepted|302 Found|402 Payment Required|502 Bad Gateway
 |203 Non-authoritative Information|303 See Other|403 Forbidden|503 Service Unavailable
 |204 No Content|304 Not Modified|404 Not Found|504 Gateway Timeout
 |205 Reset Content|305 Use Proxy|405 Method Not Allowed|505 HTTP Version Not Supported
 |206 Partial Content|307 Temporary Redirect|406 Not Acceptable|506 Variant Also Negotiates
 |207 Multi-Status|308 Permanent Redirect|407 Proxy Authentication Required|507 Insufficient Storage
 |208 Already Reported| |408 Request Timeout|508 Loop Detected
 |226 IM Used| |409 Conflict|510 Not Extended
 | | |410 Gone|511 Network Authentication Required
 | | |411 Length Required|599 Network Connect Timeout Error
 | | |412 Precondition Failed| 
 | | |413 Payload Too Large| 
 | | |414 Request-URI Too Long| 
 | | |415 Unsupported Media Type| 
 | | |416 Requested Range Not Satisfiable| 
 | | |417 Expectation Failed| 
 | | |418 I'm a teapot| 
 | | |421 Misdirected Request| 
 | | |422 Unprocessable Entity| 
 | | |423 Locked| 
 | | |424 Failed Dependency| 
 | | |426 Upgrade Required| 
 | | |428 Precondition Required| 
 | | |429 Too Many Requests| 
 | | |431 Request Header Fields Too Large| 
 | | |444 Connection Closed Without Response| 
 | | |451 Unavailable For Legal Reasons| 
 | | |499 Client Closed Request| 

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
