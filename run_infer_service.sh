#! /bin/sh
#
# run_infer_service.sh
# Copyright (C) 2022 nhat-l <nhat-l@rd03>
#
# Distributed under terms of the MIT license.
#


curl -i -X POST -H "Content-Type: application/json" \
        -d '[{"src": "a p p l e", "id": 100}]' \
            http://127.0.0.1:5000/translator/translate
