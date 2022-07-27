#! /bin/sh
#
# run_translate.sh
# Copyright (C) 2022 nhat-l <nhat-l@rd03>
#
# Distributed under terms of the MIT license.
#


# Translate
onmt_translate -model model/transformer_oov_5_5_step_10000.pt -src oov_data/val.en -output results/val_transformer_10k_5_5.hyp -gpu 0 -verbose

#onmt_translate -model model/lstm_oov_step_18000.pt -src oov_data/val.en -output results/val_lstm.hyp -gpu 0 -verbose
