# DoXtak: Docker Material MkDocs Stack
A docker container for MkDocs with the Material theme.

## Development mode

You can use the mkdocs built-in web server:

``` console
git clone https://github.com/abousselmi/doxtak-build.git
```

``` console
cd doxtak-build
```

``` console
docker run -it --rm \
  -p 80:80 \
  -v $PWD/samples:/doxtak/docs/my_projects \
  -v /root/www:/www \
  abousselmi/doxtak-build serve -a 0.0.0.0:80 -f doxtak/mkdocs.yml
```

As you can see, two separate volumes are used:

* /doxtak/docs for the source files (*.md)
* /www for build (you can serve directly from this volume)

## Production mode

You can use this container as a function to build your source files.
Then you can use a web server such as Apache or Nginx for serving
the static html files.

To build source files you can use:

``` console
docker run \
  -v $PWD/samples:/doxtak/docs/my_projects \
  -v /root/www:/www \
  abousselmi/doxtak-build build -f doxtak/mkdocs.yml
```

## Screenshot

![DoXtak screenshot](https://i.imgur.com/TcKW1Da.png "DoXtak screenshot")

## Documentation

For more info, please visit:

* [mkdocs.org](https://www.mkdocs.org/)
* [squidfunk.github.io/mkdocs-material](https://squidfunk.github.io/mkdocs-material/)

## License

MIT
