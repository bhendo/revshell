#!/bin/bash
socat file:`tty`,raw,echo=0 tcp-listen:$1