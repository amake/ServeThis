# ServeThis

A very simple, double-clickable macOS app that serves its current directory over
HTTP.

This is intended for folks who need to run temporary, local HTTP servers but
aren't comfortable using the command line, for instance web designers who want
to take advantage of [Live.js](http://livejs.com/) when editing local files.

# Usage

1. Put the app in the directory you want to serve
2. Double-click it
3. Visit http://localhost:8000 in your browser

Note that you can run multiple copies; each subsequent copy will try to run on
the next available port, so 8001, 8002, etc.

# Building

Requirements:

- GNU make
- [Platypus](https://github.com/sveinbjornt/Platypus) with command-line tool installed

Just run `make`. The app will be put in `work`, and the zip into
`dist`. Optionally provide your Apple developer ID to sign the app by running
`make codesign_id=...`.

# License

MIT
