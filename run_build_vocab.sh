#! /bin/sh
#
# run_build_vocab.sh
# Copyright (C) 2022 nhat-l <nhat-l@rd03>
#
# Distributed under terms of the MIT license.
#

# Build vocab
onmt_build_vocab -config spell_oov.yaml -n_sample 133166
