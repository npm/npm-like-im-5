# Using a `package.json`

Using the `npm install` command to install individual packages is
great, but it can get confusing quickly. How do you know what you've
already installed? It's tedious to check your `node_modules` folder
all the time. 

Enter `package.json`. This is a file that lists all the packages your
project needs, as well as some meta-data about the project. An 
example:

```json
{
  "name": "mod-a",
  "version": "2.0.0",
  "description": "a test module for npm docs",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/ashleygwilliams/module-A.git"
  },
  "keywords": [],
  "author": "ag_dubs",
  "license": "ISC",
  "bugs": {
    "url": "https://github.com/ashleygwilliams/module-A/issues"
  },
  "homepage": "https://github.com/ashleygwilliams/module-A",
  "dependencies": {
    "mod-b": "^2.0.0"
  }
}
```

It is written in `JSON` (JavaScript Object Notation), which is a way
to describe information in a way that JavaScript can easily parse. 

## Creating a `package.json`

Luckily, you don't need to write a `package.json` by hand. The npm CLI
provides a command called `init` that will generate one for you:

```
npm init
```

This command will kick off an interactive program that will ask you
questions about your package. However, the `init` command is very
intelligent and can infer many things about your package for you. If you'd
like to just use the information it infers you can pass the `--yes`
flag: 

```
npm init --yes
```

- `name`: defaults to author name unless in a `git` directory, in which case it
    will be the name of the repository
- `version`: always `1.0.0`
- `main`: always `index.js`
- `scripts`: by default creates a empty `test` script
- `keywords`: empty
- `author`: whatever you provided the CLI
- `license`: [`ISC`][2]
- `repository`: will pull in info from the current directory, if present
- `bugs`: will pull in info from the current directory, if present
- `homepage`: will pull in info from the current directory, if present

You can also set several config options for the init command. Some useful ones:


```
> npm set init.author.email "wombat@npmjs.com"
> npm set init.author.name "ag_dubs"
> npm set init.license "MIT"
```

## Specifying Packages

To specify the packages your project depends on, you need to 
list the packages you'd like to use in your `package.json` file. There are
2 types of packages you can list:

- `"dependencies"`: these packages are required by your application in production
- `"devDependencies"`: these packages are only needed for development and testing

### Manually editing your `package.json`

You can manually edit your `package.json`. You'll need to create an attribute
in the package object called `dependencies` that points to an object. This object
will hold attributes named after the packages you'd like to use, that point to a 
[semver][1] expression that specifies what versions of that project are 
compatible with your project.

If you have dependencies you only need to use during local development, you will
follow the same instructions as above but in an attribute called `devDependencies`.

For example: The project below uses any version of the package `my_dep` that matches
major version 1 in production, and requires any version of the package `my_test_framework`
that matches major version 3, but only for development:

```
{
  "name": "my_package",
  "version": "1.0.0",
  "dependencies": {
    "my_dep": "^1.0.0"
  },
  "devDependencies" : {
    "my_test_framework": "^3.1.0"
  }
}
```

### The `--save` and `--save-dev` install flags

The easier (and more awesome) way to add dependencies to your `package.json` is to do
so from the command line, flagging the `npm install` command with either `--save` or
`--save-dev`, depending on how you'd like to use that dependency.

To add an entry to your `package.json`'s `dependencies`:

```
npm install <package_name> --save
```

To add an entry to your `package.json`'s `devDependencies`:

```
npm install <package_name> --save-dev
```



