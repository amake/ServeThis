# ServeThis

A very simple, double-clickable macOS app that serves its current directory over
HTTP.

This is intended for folks who need to run temporary, local HTTP servers but
aren't comfortable using the command line, for instance web designers who want
to take advantage of [Live.js](http://livejs.com/) when editing local files. It
is merely a wrapper around the
[SimpleHTTPServer](https://docs.python.org/2/library/simplehttpserver.html)
module in macOS's built-in Python.

# Download

See [Releases](https://github.com/amake/ServeThis/releases).

# Usage

1. Put the app in the directory you want to serve
2. Double-click it
3. Visit http://localhost:8000 in your browser

Note that you can run multiple copies; each subsequent copy will try to run on
the next available port, so 8001, 8002, etc.

# Known Issues

If you get the following message when accessing the URL in your browser, try moving the app to another location and then moving it back. (This appears to be related to macOS sandboxing of apps downloaded from the internet.)

> Error response
>
> Error code 404.
>
> Message: No permission to list directory.
>
> Error code explanation: 404 = Nothing matches the given URI.

# Building

Requirements:

- GNU make
- [Platypus](https://github.com/sveinbjornt/Platypus) with command-line tool installed

Just run `make`. The app will be put in `work`, and the zip into
`dist`. Optionally provide your Apple developer ID to sign the app by running
`make codesign_id=...`.

# License

MIT
