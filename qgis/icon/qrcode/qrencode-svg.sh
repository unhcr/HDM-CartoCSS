for x in `cat listcode.txt`; do qrencode --type=SVG --margin=2 -o $x.svg $x; done
