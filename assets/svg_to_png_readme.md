# How to generate a PNG logo

Make sure you have inkscape installed.

Then run:

```bash
./to_png.sh blah.svg 1000
```

Which is just an over-complicated version of:
```bash
inkscape -f blah.svg -e blah.png -w=width
```

