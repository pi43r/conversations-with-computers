#!/usr/bin/env python
import sys
import os.path
from pandocfilters import toJSONFilter, Image, Str

def image_filter(key, value, format, meta):
    if key == 'Image':
        src = value[1][0]
        if isinstance(src, str) and not os.path.isfile(src):
            print("Could not find image: {}".format(src), file=sys.stderr)
            return []
    return None

if __name__ == '__main__':
    toJSONFilter(image_filter)
