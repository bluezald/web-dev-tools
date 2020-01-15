# Security

## Tools:
- https://observatory.mozilla.org/analyze/

# Resources:
- https://github.com/sbilly/awesome-security
- OWASP Cheatsheet series: https://cheatsheetseries.owasp.org/

## Disable User's JS Console
https://davidwalsh.name/disable-console
```js
(function() {
    try {
        var $_console$$ = console;
        Object.defineProperty(window, "console", {
            get: function() {
                if ($_console$$._commandLineAPI)
                    throw "Sorry, for security reasons, the script console is deactivated";
                return $_console$$
            },
            set: function($val$$) {
                $_console$$ = $val$$
            }
        })
    } catch ($ignore$$) {
    }
})();
```

- References:
  - https://nemethgergely.com/building-secure-javascript-applications/
  - https://www.shopify.com.ph/partners/blog/website-security
  - https://github.com/vasanthk/web-security-basics
  - https://developer.mozilla.org/en-US/docs/Web/Security