# The Registry

The registry is the name of the location that all packages published
to npm live. Public, private, scoped, all packages live in the 
registry, and this fact is one of the most valuable propositions npm
has.

## How the Registry works

The registry is a collection of databases and services that allows
users to read, store, and update packages. When using the CLI, the
registry will check one or all of the following things:

- does this user have permission to read/write to this package
- does this package name (already) exist
- does this version of a package (already) exist

### Restrictions

When creating packages the Registry imposes some restrictions on users:

- A package **must have** a name and a version at bare minimum
- No package can have the same name as another package
- A package can be published at one version **only once**
- A package name must be all lowercase letters
