# Using npm Packages with Node.js

Now that we've installed a package, let's learn how to use it
in our Node.js application.

## The Node.js `require` function

If you recall from the beginning of this class, the Node.js module
loader and npm co-evolved. That is to say, they were written with each
other in mind.

Node.js' module loader uses a function called `require` that anticipates
a `node_modules` directory. When you want to use a package you can type:

```javascript
//index.js

require('mod-a');
```

When Node.js sees this code, it will look for a `node_modules` directory,
and then it will look for a `mod-a` directory inside. If it finds it, it
will let you use the code from `mod-a` in your application. If it doesn't
you'll get an error:

```
module.js:340
    throw err;
    ^

Error: Cannot find module 'mod-a'
...
```

When you see this error, it means that Node.js could not find your
package. This mean you'll need to install it using the `npm install`
command.
