# Evaluation code

These files are based of the old SquAD files from Huggingface. We made some minor modifications to fit it to our use case and dataset/make it work with newer versions of the transformers library. 


### Packages
```
charset-normalizer 2.1.1
datasets           2.7.1
evaluate           0.3.0
huggingface-hub    0.11.0
numpy              1.23.5
pandas             1.5.1
pyparsing          3.0.9
sentencepiece      0.1.97
tokenizers         0.13.2
torch              1.12.0+cu113
tqdm               4.64.1
transformers       4.25.1
urllib3            1.26.12
wandb              0.13.5
```
### Known problems

The script does not work with Huggingface's "FastTokenizer" objects. 
