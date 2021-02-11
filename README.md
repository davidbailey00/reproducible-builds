# Reproducible Builds

The purpose of this project is to build and package popular NPM packages, and verify that the package produced matches the one published to NPM. This enables detecting malicious code injection which may otherwise go unnoticed, as described in David Gilbertson's article, [_I’m harvesting credit card numbers and passwords from your site_](https://medium.com/hackernoon/im-harvesting-credit-card-numbers-and-passwords-from-your-site-here-s-how-9a8cb347c5b5):

> I’m afraid it’s perfectly possible to ship one version of your code to GitHub and a different version to npm.
