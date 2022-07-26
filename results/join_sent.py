#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2022 nhatldm <nhatldm@asr-ictu>
#
# Distributed under terms of the MIT license.

import sys
with open(sys.argv[1], "r") as f:
    inp_file = f.readlines()


def join_sent(sent):
    norm_sent = []
    for char in sent.strip():
        if char != " ":
            norm_sent.append(char)
    return "".join(norm_sent)

with open(sys.argv[2], "w") as f:
    for line in inp_file:
        f.write(join_sent(line).strip() + "\n")

