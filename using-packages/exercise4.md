# Exercise 4: A Static Site, with npm

## Learning Objectives

- recognize a Node.js applications dependencies
- install a dependency and save it to a `package.json`

## Prerequisites

- you should have Node.js >= v4 installed
- you should have npm v3 installed

## Instructions

In this exercise we will build a small website using a Node.js
framework called Express.

1. Create a directory called `Exercise4`. Change into that directory
  using `cd Exercise4`.
2. Create a file called `index.js`. Put this code in it:

  ```
  var express = require('express');
  var app = express();

  app.get('/', function (req, res) {
    res.send('Hello World!');
  });

  app.listen(3000, function () {
    console.log('Example app listening on port 3000!');
  });
  ```

3. Run this program. Based on what you recieve, create a `package.json`
  with all the dependencies you would need.

  Visit `http://localhost:3000`. When you have all the correct dependencies,
  you should see `Hello World!`

4. Complete your `package.json` by including your name, email address,
  and website.

## Hints

- You can run a Node.js program by typing `node <js-file-name>` where `js-file-name`
  is the name of a `.js` file, e.g. `index`, `index.js`
