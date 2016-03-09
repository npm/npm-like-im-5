# What is npm?

npm is the package manager for JavaScript. It has two
primary goals:

- put code in a place where it can easily be used
- manage differences in dependency versions

npm accomplishes this by managing 3 primary products:

- the CLI
- the registry
- the website

## The CLI

npm's CLI, or Command Line Interface, is an installed program that allows
users to interact with a registry via their terminal. This is by far the most well-known and used npm product.

## The Registry

npm's registry is, arguably, the most valuable asset that npm has.
The registry is a database (actually serveral databases!) that contains
all package data and meta-data.

When one types `npm install` (among other things!) a request is made to
the registry.

It is possible to use the npm CLI with *any* registry. The npm registry
is simply the default.

### npm OnSite

npm OnSite is a paid product by which npm provides customers
with a fully replicated version of the public registry for use
behind company firewalls.

## The Website

The website is npm's home on the World Wide Web. It has two primary goals:

- display package READMEs
- allow users to manage package permissions via Orgs and Teams

### Package READMEs

The primary function of the website is to allow users to search
for packages and read information on them. Information on each
package is found in a `README.md` file in the root directory of
the package repository (often, GitHub).

npm uses a package called [`marky-markdown`] to parse package `README`s
and displays it on the website. It attempts to parse and display the
files exactly as GitHub does, but currently is not.
there.

### Orgs and Teams

As of last November, npm offers a new service called ["Orgs and Teams"]
which grants users the ability to manage permissions to packages.

This is currently only a paid product, but an open source tier will be
available in the future.

[`marky-markdown`]: https://github.com/npm/marky-markdown
["Orgs and Teams"]: https://docs.npmjs.com/orgs/what-are-orgs
