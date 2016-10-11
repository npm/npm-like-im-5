# Installing Packages

In order to use packages from the registry we must **install** them.
Recall that the primary goal of npm is to put pieces of code in the
right place for Node.js to use. That's exactly what installing does.

## The `npm install` CLI command

The CLI command to install a package is:

```
npm install <package-name>@<version>
```
… where `package-name` is the name of the package, and `version`
is the version number you would like to install. Version number is 
optional. If you don't pass it, npm will simply install the most recent 
published version.

A shortcut for this:

```
npm i <package-name>@<version>
```

For example, if I wanted to install `mod-a` I would type:

```
npm install mod-a
```

… which would install `mod-a` at the most recent version.

If I wanted to install `mod-a` but specifically version `1.0` I would
type:

```
npm install mod-a@1.0
```

## The `node_modules` directory

When we run the `npm install` command npm will go to the Registry and
fetch the package you request. It will then take that package and place
it in a directory called `node_modules`.

For example, let's say I have a directory called `my-project`. In my
terminal, inside that directory, I run:

```
$ ~/Projects/my-project/>  npm install mod-a@1.0
```

… npm will go to the Registry and install `mod-a` here:

```
Projects
|- my-project
  |- node_modules
    |- mod-a         # package data is here          
```
