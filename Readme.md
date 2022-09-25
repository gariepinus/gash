# gash
> gariepinus’ shell tools

[![asciicast](https://asciinema.org/a/rtWRibnJKppT34pb0DHg17usI.svg)](https://asciinema.org/a/rtWRibnJKppT34pb0DHg17usI)

Making it easier to write awesome shell scripts by putting some things into
dedicated tools I otherwise found myself rewriting repeatedly.

## Installing / Getting started

Clone the repo and run make to "install" the tools by creating symlinks to them
in your `PATH`. Have a look at the [Makefile](Makefile) for more details.

```
~$ git clone git@github.com:gariepinus/gash.git
~$ cd gash
~/gash/$ sudo make install
~/gash/$ gash-echo INFO "Hello world"
[INFO]  Hello world
```

## Functionality

### gash-echo

Write formatted message to output - or not, depending on the Log Levels
chosen for the message and set via environment variable `GASHOPT_LOGLEVEL`.

```
gash-echo [options] MESSAGE_LOGLEVEL MESSAGE_TEXT
```

### gash-exec

Execute command suppressing all of its output and use gash-echo to write
status information to `stderr`.

```
gash-exec [options] COMMAND MESSAGE
```

## Configuration

You can configure the behaviour of gash tools by setting `GASHOPT` environment
variables.

### GASHOPT_LOGLEVEL

> DEBUG|INFO|WARN|ERROR (default: INFO)

`gash-echo` will only write messages to output if the level chosen for them
is equal or higher then the level set by this variable.

### GASHOPT_TIMESTAMP 

> true|false (default: false)

Set to true to include timestamps in output written by `gash-echo`.

### GASHOPT_COLOR

> true|false (default: false)

Set to true to include control sequences for color in output written by
`gash-echo` and status information from `gash-exec`.

### GASHOPT_DRYRUN

> true|false (default: false)

If set to true `gash-exec` will not actually execute commands and simply
return with 0.

### GASHOPT_VERBOSE

> true|false (default: false)

Set to true to get more information written to stderr by `gash-exec`.

## Licensing

The code in this project is licensed under [The Unlicense](LICENSE).
