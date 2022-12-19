# spelling-oov

Đưa ra dự đoán phát âm của từ tiếng Anh trên các phiên âm tiếng Việt một cách tương đối chính xác

## Cài đặt project
```
pip install -r requirements.txt
pip install OpenNMT-py
```

## Data Preparation


Data được xử lý theo dạng character tokenize

Để chạy xử lý data:

`bash run_prepare_data.sh`

## Build vocab

Để build vocab chạy phần lệnh: 

`bash run_build_vocab.sh`


## Train mô hình

Để train model:

`bash run_train.sh`

## Infer mô hình

Kiểm tra các file input và output trong file `run_translate.sh` chạy lệnh:

`bash run_translate.sh`


## Đánh giá BLEU score

`python results/cal_bleu.py ref_file hyp_file`
ref_file là file gốc
hyp_file là file output sinh ra từ model

ví dụ:
`python cal_bleu.py val_joined.vi val_transformer_10k_5_5_joined.hyp`

## Service

Chạy: `bash run_server.sh` để khởi tạo model lên Service

Sau đó chạy `bash run_infer_service.sh` để truyền từ vào Service trên
## Docker

Docker Image: registry.gitlab.com/vaisawesome/randd/nlp/spelling-oov:0.2

Run Docker: `docker-compose up`

Chạy `bash run_infer_service.sh` để infer từ vào docker service

## Kết quả


|    Mô hình    | rnn   | transformer  | transformer_V2  |
| ------------- | ----- |  ----------- | --------------- |
| Encoder layer |  1    |       1      |        5        |
| Decoder layer |  1    |       1      |        5        |
|     BLEU      | 30.63 |     35.41    |      38.23      |
