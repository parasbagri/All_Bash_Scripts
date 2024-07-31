# Bash Scripting Basics

A bash script is a series of commands written in a file. These commands are executed by the bash program line by line. Bash scripts allow you to automate tasks, perform system operations, and save time.

## What Is a Bash Script?

- A bash script is a plain text file with a `.sh` extension.
- It contains a sequence of commands that you would normally type on the command line.
- You can navigate directories, create folders, and execute processes using bash scripts.

## Identifying a Bash Script

- File extension: Bash scripts typically end with `.sh`.
- Shebang line: The first line of the script starts with `#!/bin/bash`, indicating that it should be executed via the bash shell.

## Example Bash Script

```bash
#!/bin/bash

# This is a simple bash script
echo "Hello, world!"
mkdir my_folder
cd my_folder
touch my_file.txt 


# ImageMagick: Mastering Digital Image Alchemy

ImageMagick® is a free and open-source software suite used for editing and manipulating digital images. It offers a wide range of capabilities, including creating, editing, composing, and converting bitmap images. Some key features of ImageMagick include:

- **File Format Support**: ImageMagick can read and write over 200 image file formats, including JPEG, PNG, GIF, TIFF, and PDF.
- **Command-Line Interface**: You can use ImageMagick from the command line (invoked as `magick`). This allows for scripting and automation, making it useful for batch processing tasks.
- **Color Management**: Accurate color management with color profiles or built-in gamma compression/expansion.
- **Animation**: Create GIF animation sequences from a group of images.
- **Bilateral Blur**: A non-linear, edge-preserving, and noise-reducing smoothing filter.
- **Complex Text Layout**: Supports bidirectional text and shaping.

## Example Commands

Here are a few examples of how you can use ImageMagick:

1. Convert an image format:
   ```bash
   magick input.jpg output.png

2. Resize an image:
magick input.png -resize 800x600 output.png

3. Create a GIF animation:
magick frame1.png frame2.png -delay 100 -loop 0 animation.gif


# Pug.js (formerly Jade) - A Concise Templating Engine

Pug.js, formerly known as Jade, is a high-performance template engine heavily influenced by Haml. It allows you to write concise and elegant HTML templates using indentation-based syntax. Here's how you can get started:

## Installation

Install Pug via npm:

```bash
npm install pug

# Examples
doctype html
html
  head
    title My Pug Page
  body
    h1 Welcome to Pug!
    p This is a simple Pug template.



# Jsonnet: A Data Templating Language

Jsonnet is a language that extends JSON with computation and syntax. It allows you to create structured data, configurations, and templates in a concise and flexible manner. Let's explore some key features:

## Syntax

- Any valid JSON document is also a valid Jsonnet program.
- Jsonnet introduces new syntax elements beyond plain JSON.
- Example:

```jsonnet
{
  cocktails: {
    'Tom Collins': {
      ingredients: [
        { kind: "Farmer's Gin", qty: 1.5 },
        { kind: 'Lemon', qty: 1 },
        { kind: 'Simple Syrup', qty: 0.5 },
        // ...
      ],
      garnish: 'Maraschino Cherry',
      served: 'Tall',
      description: |||
        The Tom Collins is essentially gin and
        lemonade. The bitters add complexity.
      |||,
    },
    // Other cocktail entries...
  }
}

Variables
Use variables to avoid duplication.
The local keyword defines a variable.
Example:
{
  local house_rum = 'Banks Rum',
  Daiquiri: {
    ingredients: [
      { kind: house_rum, qty: 1.5 },
      { kind: 'Lime', qty: 1 },
      // ...
    ],
    served: 'Straight Up',
    // ...
  },
  // Other entries...
}



