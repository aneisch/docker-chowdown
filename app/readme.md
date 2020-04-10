# Chowdown

A simple, plaintext recipe database for hackers. This is based on a fork: https://github.com/clarklab/chowdown --> https://github.com/GregYankovoy/docker-chowdown

[http://chowdown.io](http://chowdown.io)

# Getting Started

```
    chowdown:
        container_name: chowdown
        image: gregyankovoy/chowdown:latest
        ports:
          - "4000:4000"
        volumes:
          - '/opt/chowdown:/config'
        restart: always
```

Clone this repo in /opt/chowdown. Keep in sync, push/pull as needed. 

# Writing a Recipe

The recipes are stored in the collection _recipes. Anything that is only a component of a larger recipe should go in _components.

They are written in Markdown and contain a few special sections:

- The frontmatter, which contains:
 - Title, Image, and Layout (which is "recipe")
 - Ingredients (a list of things in the dish)
 - Directions (a list of steps for the dish)
- Body content (for intros, stories, written detail)

https://www.alt-codes.net/fraction-symbols 

If you need help with Markdown, here's a [handy cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

# Writing a component recipe

A component recipe is a special recipe made up of other recipes. To make a new component recipe:

- place your smaller, single recipes into the /_components folder
- make a new recipe like normal in the /_recipes folders
- in the frontmatter of this new recipe, include your recipes from the /_components folder (instead of the usual Ingredients list)

You can an example on the Red Berry Tart recipe. 

- [example Markdown](https://raw.githubusercontent.com/clarklab/chowdown/gh-pages/_recipes/red-berry-tart.md)
- [example recipe page](http://chowdown.io/recipes/red-berry-tart.html)
