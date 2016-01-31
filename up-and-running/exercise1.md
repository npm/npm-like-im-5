# Exercise 1: Changing versions of npm

## Learning Objectives

- reliably switch between versions of npm
- compare and contrast npm2 and npm3

## Prerequisites

- you should have Node.js >= v4 installed
- you should have npm v3 installed
- (optional) install `tree` [OS X], [Linux]

  > Note: On Linux and OSX machines you can use `tree` to view
  > the directory structure.

## Instructions

1. Assuming you followed previous sections, you should currently
   be using npm3. Switch to npm2.

2. Create a `Exercise1` directory (`mkdir Exercise1`), and then `cd`
    into that directory and create 2 directories, `npm2` and `npm3`.

3. Change into the `npm2` directory. Run these commands:

    ```
    npm install mod-a@1.0
    npm install mod-b@1.0
    ``` 

3. View the `node_modules` directory. 
   
4. Change intro the `npm3` directory. Switch to npm3.

5. Run the same commands as listed in Step #3.

6. Compare and contrast the `npm3/node_modules` directory with the
    `npm2/node_modules` directory. Note the differences.

[OS X]: http://superuser.com/questions/359723/mac-os-x-equivalent-of-the-ubuntu-tree-command
[Linux]: http://manpages.ubuntu.com/manpages/hardy/man1/tree.1.html
