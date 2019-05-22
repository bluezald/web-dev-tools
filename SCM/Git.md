#### git config
Sets the global config of git
```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

Sets the local config of git in a directory
```
$ git config --local user.name "John Doe"
$ git config --local user.email johndoe@example.com
```

List all the config
```
$ git config --list
```

#### git merge
- **Merge commit** when you want to maintain an exact history of changes.
- **Squash** to make your commits list less cluttered, which results in less time to search for commits that introduce a bug (with a git bisect) and provides an easy-to-follow commit history.
- **Fast forward** if the destination branch has no new commits since you created the source branch. Fast-forward merges move the source branch tip up to the destination branch tip, combining commit histories.

Source: https://bitbucket.org/blog/git-squash-commits-merging-bitbucket?utm_source=newsletter-email&utm_medium=email&utm_campaign=May-BB-Digest-Version-2_EML-4576&jobid=104109806&subid=1262437723