## Middleware
- Middleware functions are the perfect place to modify the req and res objects with relevant information. For instance, after a user has logged in, you could fetch their user details from a database, and then store those details in res.user.
- In short, middleware gives you access to req and res in the apps request-> response cycle.

- References:
  - https://medium.com/@jamischarles/what-is-middleware-a-simple-explanation-bb22d6b41d01