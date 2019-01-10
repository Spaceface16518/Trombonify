# Trombonify

This is a simple command line application that turns English characters into "trombone format"

This package is kind of a joke, but if you want some background, this meme might help.

![Trombone text](https://github.com/Spaceface16518/Trombonify/raw/master/resources/trombone_text.jpeg)

## Usage

As of v0.1.0, this program will crash if provided with an invalid subcommand.

If you are running it from source code (for example `stack run`), use the subcommands like

```shell
encode
```

or

```shell
decode
```

For example

```shell
stack run encode Hello this is a test
```

The `decode` subcommand requires valid trombone format, and will output obviously corrupted results if not given perfect input.
