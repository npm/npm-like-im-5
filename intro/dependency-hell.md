# Package Managers and Dependency Hell

Imagine there are three modules: A, B, and C. A requires
B at v1.0, and C also requires B, but at v2.0. We can
visualize this like so:

![2 modules need B](images/how-npm-works/deps1.png)

Now, let's create an application that requires both module
A and module C.

![My app needs both A and C](images/how-npm-works/deps2.png)

## Dependency Hell

A package manager would need to provide a version of
module B. In all other runtimes prior to Node.js, this is
what a package manager would try to do. This is dependency hell:

![Dependency Hell](images/how-npm-works/deps3.png)

Instead of attempting to resolve module B to a single version,
npm puts both versions of module B into the tree.
