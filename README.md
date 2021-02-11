# Reproducible Builds

The purpose of this project is to independently build and package popular packages on NPM, and verify that the package produced matches the one published to NPM. This enables detecting malicious code injection which may otherwise go unnoticed, as described in David Gilbertson's article, [_I’m harvesting credit card numbers and passwords from your site. Here's how_](https://medium.com/hackernoon/im-harvesting-credit-card-numbers-and-passwords-from-your-site-here-s-how-9a8cb347c5b5):

> I’m afraid it’s perfectly possible to ship one version of your code to GitHub and a different version to npm.

## Rules

- Each package should be built entirely from its unminified source code
- If a package includes generated code in its Git repository, it should be removed and rebuilt

## Excluded packages

### [`lodash`](https://www.npmjs.com/package/lodash)

The [GitHub repository for Lodash](https://github.com/lodash/lodash) has a branch named [`npm`](https://github.com/lodash/lodash/tree/npm) from which release tags are created; however, this branch only contains generated code without instructions for how to produce it, and differs substantially from the main branch. Building NPM packages seems to involve [`lodash-cli`](https://www.npmjs.com/package/lodash-cli), which is no longer maintained and does not provide instructions to build using local sources rather than the NPM version of Lodash.
