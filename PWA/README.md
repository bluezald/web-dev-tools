What makes a web app, a Progressive Web App?
- Fast & Reliable
- Installable
- Mobile & Desktop

The **web app manifest** is a simple JSON file that gives you, the developer, the ability to control how your app appears to the user.

## PWA Checklist
- https://developers.google.com/web/progressive-web-apps/checklist

### App Shell Architecture
- inspiration from native apps
- Make loading web app look faster

### Why turn your website to a PWA
- https://dev.to/pixeline/the-easy-way-to-turn-a-website-into-a-progressive-web-app-77g


- References:
  - https://developers.google.com/web/fundamentals/codelabs/your-first-pwapp/

### Service Workers
- is a script that your browser runs in the background, separate from a web page, opening the door to features that don't need a web page or user interaction. Today, they already include features like push notifications and background sync.

- Note, the service worker is served from the root directory, not from a /scripts/ directory. This is the easiest way to set the scope of your service worker. The scope of the service worker determines which files the service worker controls, in other words, from which path the service worker will intercept requests. The default scope is the location of the service worker file, and extends to all directories below. So if service-worker.js is located in the root directory, the service worker will control requests from all web pages at this domain.