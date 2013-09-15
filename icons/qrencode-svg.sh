for x in `cat listcode.txt`; do qrencode --type=SVG -o $x.svg $x; done
