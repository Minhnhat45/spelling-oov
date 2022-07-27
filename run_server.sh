#! /bin/sh
#
# run_server.sh
# Copyright (C) 2022 nhat-l <nhat-l@rd03>
#
# Distributed under terms of the MIT license.
#


export CONFIG="./available_models/conf.json"

python OpenNMT-py/onmt/bin/server.py --config $CONFIG
