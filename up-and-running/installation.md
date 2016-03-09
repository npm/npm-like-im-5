# Installing Node.js and npm

Let's get up and running with Node.js and npm.

## Installing Node.js

Node.js is the runtime environment for developing server-side Web Applications in JavaScript.

You can test and see if you already have node installed on your machine
by opening your terminal and typing:

```
node -v
```

Any version higher than `v0.10.32` will work, but we strongly recommend
that you use `v4` (LTS) or `v5` (current).

Node.js provides installers for Windows, OS X, and Linux on
[http://www.nodejs.org]. However, the best way to install Node.js is
to use a version manager:

- For OS X or Linux users, [nvm]
- For Windows users, [nodist]

## Updating npm

Node comes with npm installed so you should have a version of npm.

This class expects you to be using npm3. To test what version of npm
you installed, you can type:

```
npm -v
```

It is worth noting that npm gets updated more frequently than Node does, so you'll want to make sure it's the latest version.

`npm install npm@latest -g`

[nvm]: https://github.com/creationix/nvm
[nodist]: https://github.com/marcelklehr/nodist
