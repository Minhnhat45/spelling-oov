#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2022 nhatldm <nhatldm@asr-ictu>
#
# Distributed under terms of the MIT license.

import sys

with open(sys.argv[1], "r") as f:
    input_file = f.readlines()


def char_token(word):
    split_word = []
    for char in word.strip():
        split_word.append(char)
    return " ".join(split_word)

with open(sys.argv[2], "w") as f:
    for line in input_file:
        f.write(char_token(line.strip()) + "\n")

