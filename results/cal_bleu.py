#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2022 nhatldm <nhatldm@asr-ictu>
#
# Distributed under terms of the MIT license.

import nltk
import sys

with open(sys.argv[1], "r") as f:
    ref = f.readlines()

with open(sys.argv[2], "r") as f:
    hyp = f.readlines()

BLEUscore = nltk.translate.bleu_score.sentence_bleu([ref], hyp, weights = (0.5, 0.5))
print(BLEUscore*100)
