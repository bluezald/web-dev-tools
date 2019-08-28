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

### HTTP/2
- The impact of HTTP/2 is huge, but first, let’s recap on some of the commonly known optimisation techniques used in HTTPS/1.1 — Domain Sharding and Asset Concatenation.
- **Sharding** is a performance method where you serve your service on as many different hosts as possible.
- Youtube used to do it by having assets on multiple domains (i1.ytimg.com, i2.ytimg.com etc.) they serve via HTTP/2 now
- In the HTTPS/1.x world, downloading a single file would be much faster than downloading multiple files at the same time. **Asset concatenation** is a optimisation technique that helps by combining all your multiple CSS and JS files into a single CSS and JS file.

- References:
    - https://medium.com/@jacobtan/understanding-http-2-and-its-caveats-1e8200519c4c

- APIs are categorized as simple object access protocol (SOAP), remote procedure call (RPC), and representational state transfer (REST or RESTful). SOAP APIs use lower-level protocols like HTTP to communicate between a service’s shared elements. RPC APIs are mainly used in client-server models and allow a program to request a service without compromising network details. REST, the most popular API type, can be used with nearly any protocol including HTTP.

### Microservices
-  stateful and stateless. Stateful microservices save session information within the code. They are suitable for transactions that require more than one database, such as interactive gaming. Stateless microservices do not retain the session state between requests. They do not link requests in the way that stateful microservices do. Stateless microservices are used for transactions that return specific results, such as checking a mobile service’s prepaid balance using a USSR code

- References:
    - https://it.toolbox.com/guest-article/demystifying-apis-and-microservices-discover-the-importance-of-apis-and-microservices-to-modern-businesses

### Token
#### JWT (JSON Web Token)
- is an open standard (RFC 7519) that defines a compact and self-contained way for securely transmitting information between parties as a JSON object. This information can be verified and trusted because it is digitally signed. JWTs can be signed using a secret (with HMAC algorithm) or a public/private key pair using RSA.

#### OAuth vs JWT
- OAuth 2.0 defines a protocol, i.e. specifies how tokens are transferred, JWT defines a token format.

- OAuth 2.0 and "JWT authentication" have similar appearance when it comes to the (2nd) stage where the Client presents the token to the Resource Server: the token is passed in a header.

- But "JWT authentication" is not a standard and does not specify how the Client obtains the token in the first place (the 1st stage). That is where the perceived complexity of OAuth comes from: it also defines various ways in which the Client can obtain an access token from something that is called an Authorization Server.

- So the real difference is that JWT is just a token format, OAuth 2.0 is a protocol (that may use a JWT as a token format).
- Answer from here: https://stackoverflow.com/a/39911472

## Debugging
### console
 - https://medium.freecodecamp.org/how-to-use-the-javascript-console-going-beyond-console-log-5128af9d573b

 ### Other Tools
 - [PageSpeed Insights](https://developers.google.com/speed/pagespeed/insights/)
 - [Dr Link Check](https://www.drlinkcheck.com/)
 - [Qualys]() - SSL Reporting

# Backend

### cURL
- curl is a tool to transfer data from or to a server, using one of the supported protocols (DICT, FILE, FTP, FTPS, GOPHER, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMB, SMBS, SMTP, SMTPS, TELNET and TFTP). The command is designed to work without user interaction.


# Webhooks
- send a signal when a specified event occurs
- The listener is the URL which receives the webhooks and performs a predefined action after that.
- Webhooks are basically user defined HTTP callbacks (or small code snippets linked to a web application) which are triggered by specific events. Whenever that trigger event occurs in the source site, the webhook sees the event, collects the data, and sends it to the URL specified by you in the form of an HTTP request. You can even configure an event in one site to trigger an action in another site.
- the fundamental difference between API calls and webhooks is that while the former works on request-based output mechanisms, and the latter works on event-based output mechanisms.
- The benefits of webhooks in a nutshell – instant, real-time notifications.

- References
    - https://www.chargebee.com/blog/what-are-webhooks-explained/

# Memcached
- Memcached is an in-memory key-value store for small arbitrary data (strings, objects) from results of database calls, API calls, or page rendering.

- References
    - https://github.com/memcached/memcached/wiki/Overview

# Notes
- **checksum** - the idea of a checksum or a cryptographic hash function might seem complicated and not possibly worth the effort, but we'd like to convince you otherwise! Checksums really aren't that hard to understand or create.

Let's start with a simple example, hopefully showcasing the power of checksums to prove that something has changed. The MD5 checksum for the following phrase is a long string of characters that represent that sentence.

```
This is a test.
120EA8A25E5D487BF68B5F7096440019
```

For our purposes here, they essentially equal each other. However, make even a slight change, like removing just the period, will produce the completely different checksum.

```
This is a test
CE114E4501D2F4E2DCEA3E17B546F339
```

As you can see, even a minuscule change in the file will produce a vastly different checksum, making it very clear that one is not like the other.

References:
- https://www.lifewire.com/what-does-checksum-mean-2625825