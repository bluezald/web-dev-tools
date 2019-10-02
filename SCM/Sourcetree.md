# Sourcetree


### Common Problems:

**Problem**
- When trying to clone/push on a project
```
Please make sure you have the correct access rights
and the repository exists.
Permission denied (publickey).
fatal: Could not read from remote repository.
```
**Solution**
- [This](https://confluence.atlassian.com/bitbucket/configure-multiple-ssh-identities-for-gitbash-mac-osx-linux-271943168.html?_ga=2.2594544.139281218.1569981599-129503981.1545976125)

```
$ ssh-add -l
2048 SHA256:... /Users/user/.ssh/id_rsa (RSA)

$ ssh-add ~/.ssh/user-Bitbucket
Enter passphrase for /Users/user/.ssh/user-Bitbucket:
Identity added: /Users/user/.ssh/user-Bitbucket (/Users/user/.ssh/user-Bitbucket)

$ ssh-add -l
2048 SHA256:... /Users/user/.ssh/id_rsa (RSA)
2048 SHA256:... /Users/user/.ssh/user-Bitbucket (RSA)

$ ssh -Tv git@bitbucket.org
OpenSSH_6.9p1, LibreSSL 2.1.8
...
logged in as user.
```
- The issue might have come after the reboot of the mac. The first one since I had install SourceTree v2.5.2 (110) for a better support of OAuth...


- References:
  - https://community.atlassian.com/t5/Sourcetree-questions/Permission-denied-publickey/qaq-p/594966