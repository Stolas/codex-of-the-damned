# Codex of the Damned

This site is a compilation of Vampire: the Eternal Struggle strategy resources.
The site is publicly available at [codex-of-the-damned.org](http://www.codex-of-the-damned.org).

Portions of the materials are the copyrights and trademarks of Paradox Interactive AB,
and are used with permission. All rights reserved.
For more information please visit [white-wolf.com](http://www.white-wolf.com).

![Dark Pack](src/static/img/icons/dark-pack.png)

## Contributing

Contributions are welcome. Pull Requests will be merged if they respect the general style.
Issues will be dealt with as quickly as possible.

This site uses [Flask](https://flask.palletsprojects.com) and [Babel](http://babel.pocoo.org)
to generate pages dynamically and handle internationalisation.
This is a voluntary [KISS](https://en.wikipedia.org/wiki/KISS_principle) design,
please refrain from using additional tools or frameworks.

## Installation

To install a working developpment version of the site, use `pip`:

```bash
python3 -m venv venv
pip install -e .
```

There is a make command to update translations:

```bash
make po
```

You can run the development version of the site using the `codex` entrypoint:

```bash
$ codex
 * Serving Flask app "src" (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: off
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

You can set the `DEBUG` environment variable to activate the debug mode:

```bash
DEBUG=1 codex
```

To run the production server, you'll need a web server like
[uWSGI](https://uwsgi-docs.readthedocs.io):

```bash
uwsgi --module src:app
```

or [Gunicorn](https://gunicorn.org):

```bash
gunicorn src:app
```

## Useful tools

Convert icons from raster to SVG using `imagemagick` and `potrace`:

```bash
convert -morphology Smooth Octagon:2 clan-ahrimanes.gif clan-ahrimanes.svg
```

Depending on the icon, smoothing may be better or not.
