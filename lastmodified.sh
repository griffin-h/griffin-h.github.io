#!/usr/bin/env bash

MJD=$(python -c 'from astropy.time import Time; print(f"{Time.now().mjd:.0f}")')
DATE=$(date +%Y-%m-%d)
sed "s/Last updated MJD [0-9][0-9][0-9][0-9][0-9] ([02]0[0-9][0-9]-[01][0-9]-[0-3][0-9])/Last updated MJD $MJD ($DATE)/" $1
