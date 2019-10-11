# Ethical Hacking

Attacker can attack
  - User - through Phishing
  - Presentation (Browser) - through XSS
  - Logic (Web Server)
  - Data (Database)

### Protections offered by Browsers
- Chrome protects Phishing sites
- Invalid SSL certificates
- Chrome detects weak cryptography (outdated cryptography use in SSL)
- Prevents/blocks XSS or XS Forgery

### What the Browser can't defend
- Parameter tampering
- Persistent cross site scripting
- Attackers making direct HTTP requests

### Reconnaissance and Footprinting
- Spidering with **Netsparker** - crawls through a site
- Forced Browsing with **Burp Suite**
- Directory Traversal - can pull a file in your site's system
```
http://yourdomain.com/secret/directory/>fileName=../../webconfig
http://yourdomain.com/secret/directory/>fileName=../../../../../Windows/system.ini
```