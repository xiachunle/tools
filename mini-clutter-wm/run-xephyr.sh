#!/bin/sh

display=':3'

MCOOKIE=$(mcookie)
xauth add $(hostname)/unix$display . $MCOOKIE
xauth add localhost/unix$display . $MCOOKIE
xinit "$@" -- /usr/bin/Xephyr $display -host-cursor
# startx -- `which Xnest` $display
xauth remove $(hostname)/unix$display localhost/unix$display

exit 0
