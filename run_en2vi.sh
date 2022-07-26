#export CUDA_VISIBLE_DEVICES=0


## build vocab

#onmt_build_vocab -config spell_oov.yaml -n_sample 133166

## train model

#onmt_train -config spell_oov_trans.yaml

## translate
onmt_translate -model model/transformer_oov_5_5_step_10000.pt -src oov_data/val.en -output results/val_transformer_10k_5_5.hyp -gpu 0 -verbose
#onmt_translate -model model/lstm_oov_step_18000.pt -src oov_data/val.en -output results/val_lstm.hyp -gpu 0 -verbose

## Bleu Score

#onmt_translation = ./iwslt_2015/iwslt2015-en-vi/test.vi

#perl ~/open-nmt/OpenNMT-py/tools/multi-bleu.perl ./iwslt_2015/iwslt2015-en-vi/test.vi < ./iwslt_2015/iwslt2015-en-vi/test_output_conformer_4_4.vi
