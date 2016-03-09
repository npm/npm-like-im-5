# Packages and Modules

One of the key steps in becoming immersed in an ecosystem is learning
its vocabulary. Node.js and npm have very specific definitions of
packages and modules, which are easy to mix up. We'll discuss those
definitions here, make them distinct, and explain why certain
default files are named the way they are.

## tl;dr

- A **package** is a file or directory that is described by a `package.json`.
  This can happen in a bunch of different ways! For more info, see
  ["What is a `package`?](#what-is-a-package), below.
- A **module** is any file or directory that can be loaded by Node.js'
  `require()`. Again, there are several configurations that allow this to
  happen. For more info, see ["What is a `module`?"](#what-is-a-module), below.

## What is a `package`?

A package is any of:

* a) a folder containing a program described by a `package.json` file
* b) a gzipped tarball containing (a)
* c) a url that resolves to (b)
* d) a `<name>@<version>` that is published on the registry with (c)
* e) a `<name>@<tag>` that points to (d)
* f) a `<name>` that has a `latest` tag satisfying (e)
* g) a `git` url that, when cloned, results in (a).

Noting all these `package` possibilities, it follows that even if you never
publish your package to the public registry, you can still get a lot of
benefits of using npm:

- if you just want to write a node program, and/or
- if you also want to be able to easily install it elsewhere after packing
  it up into a tarball

Git urls can be of the form:

```
git://github.com/user/project.git#commit-ish
git+ssh://user@hostname:project.git#commit-ish
git+http://user@hostname/project/blah.git#commit-ish
git+https://user@hostname/project/blah.git#commit-ish
```

The `commit-ish` can be any tag, sha, or branch which can be supplied as
an argument to `git checkout`.  The default is `master`.

## What is a `module`?

A module is anything that can be loaded with `require()` in a Node.js
program.  The following are all examples of things that can be
loaded as modules:

* A folder with a `package.json` file containing a `main` field.
* A folder with an `index.js` file in it.
* A JavaScript file.

### Most npm packages are modules

Generally, npm packages that are used in Node.js program are loaded
with `require`, making them modules. However, there's no requirement
that an npm package be a module!  

Some packages, e.g., `cli` packages only contain an executable
command-line interface, and don't provide a `main` field for use in
Node.js programs. These packages are *not* modules.

Almost all npm packages (at least, those that are Node programs)
*contain* many modules within them (because every file they load with
`require()` is a module).

In the context of a Node program, the `module` is also the thing that
was loaded *from* a file.  For example, in the following program:

    var req = require('request')

we might say that "The variable `req` refers to the `request` module".

## File and Directory Names in the Node.js and npm Ecosystem

- So, why is it the `node_modules` folder, but `package.json` file?
- Why not `node_packages` or `module.json`?

The `package.json` file defines the package.  (See
["What is a `package`?"](#what-is-a-packae), above.)

The `node_modules` folder is the place Node.js looks for modules.
(See ["What is a `module`?"](#what-is-a-module), above.)

For example, if you create a file at `node_modules/foo.js` and then
had a program that did `var f = require('foo.js')`, it would load
the module.  However, `foo.js` is not a "package" in this case,
because it does not have a package.json.

Alternatively, if you create a package which does not have an
`index.js` or a `"main"` field in the `package.json` file, then it is
not a module.  Even if it's installed in `node_modules`, it can't be
an argument to `require()`.
