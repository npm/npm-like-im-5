# npm-like-im-5

:wave: Hey there! Welcome to `npm-like-im-5`.

This book contains the curriculum for a 6hr introduction to
npm designed to be appropriate for a classically "non-technical"
audience.

## What's This Book About?

The goal of this book is to give you a solid foundation in npm
practices and concepts. The focus is both practical and theoretical;
this book takes the stance that knowing how __and why__ to do 
something is critical to successfully using any technology.

Additionally, this book hopes to reveal some of the motivation of
why npm has developed the way it has. Understanding the 
reasoning behind specific features and implementations will help
you employ the myriad features npm offers at the right time, as
well as help you debug, should you run into trouble.

There are 8 chapters included:

- Introduction

  We'll kick off our class by introducing npm and npm, Inc.
  From there, we'll talk about **dependency hell** and how
  package managers historically have attempted to solve this
  problem. Finally, we'll discuss how the Node.js module
  loader enables package managers in the Node.js ecosystem
  bypass **dependency hell** and how npm2 worked.

- Hello, npm!

  In this chapter we'll take a deep dive in npm3 and how it
  works. We'll focus on some of the gotchas npm3 might
  throw at you and teach you how to debug and fix them.

- Up and Running

  In this chapter we'll get ourselves set up with a Node.js
  environment using `nvm`. We'll learn how to update our npm
  and switch between versions.

- Using Packages

  One of npm's biggest value propositions is its Registry,
  where all the community contributed packages live. In this
  chapter, we'll learn how to install these packages, both
  locally and globally and we'll explore how packages are
  managed on our local machines. Finally, we'll learn about
  `package.json`, a way we can list the packages we need
  for a specific project.

- Semantic Versioning (Semver)

  Not necessarily a part of npm, Semantic Versioning, or Semver
  is a critical standard upon which all software is built, and
  upon which npm relies. We'll discover how Semver allows us
  to express the versions of a package we can use in a project
  as well as what version numbers are meant to express to us
  as software users.

- Publishing a Package

  Using packages from the npm Registry is great, but we'd all be
  nowhere if no one contributed their own packages. In this
  chapter we'll build a small project and publish it on the npm
  Registry. We'll also briefly discuss options npm, Inc offers
  the community for organizing package access.

- Run Scripts

  npm is a lot more than just a package manager! npm run scripts
  offer a built in way to automate tasks within your project. In
  this chapter, we'll learn how to write default `start` and `test`
  scripts, as well as how we can create custom scripts. We'll
  also explore the lifecycle events that npm provides by default
  and learn how these can be leveraged in our development
  workflows.

- Conclusion

  Great job! You made it. We'll summarize all the things we went
  through and discuss some awesome things you can do to 
  continue your learning.
