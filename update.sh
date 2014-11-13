#!/bin/sh

# generate, defaults are fine
hugo;

# send everything in public to the root of blog
# a: archive mode
#		r: recursive
#		l: keep symlinks
#		p: keep perms
#		t: keep time
#		g: keep groups
#		o: keep owner
#		D: keep devices, specials
# v: verbose
# z: compress
rsync -avz public/* 192.241.193.210:/srv/www/blog.nickoneill.name/public_html/
