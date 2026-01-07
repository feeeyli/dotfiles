#!/bin/sh

kitty @ set-spacing margin=0
nvim $*
kitty @ set-spacing margin=default
