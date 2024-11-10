# AI Policy Topic Model

My work during an internship at [UCD Centre for Digital Policy](https://digitalpolicy.ie/) in 2022.

## Pre-processing

- Download the policy documents from the shared Google Drive, put them in `data/nat-ai/orig`
  - See list of documents here: https://docs.google.com/spreadsheets/d/1e6nCWAKRSAo3cq4O-3WUKtFp5AR7up_cr8hY2jI12Zg/edit?usp=sharing 
- Run `./pdf-to-txt.sh`
- Text files should then be populated in `data/nat-ai/text`

## Visualization

- Try https://github.com/bact/policy-topic-model/blob/main/notebooks/topic-vis.ipynb

## Dependencies

- stopwordsiso - for stopword list
- NLTK - for lemmatizer
- scikit-learn - for document classifier (using Latent Dirichlet Allocation - LDA)
- pyLDAvis - for visualization
- Apache PDFBox 3 is required for text extraction from PDF.
  - Download from https://pdfbox.apache.org/download.html 
  - Rename the jar file to `pdfbox-app-3.jar` and put it inside `lib/` directory
  - Apache PDFBox 3 is licensed under the Apache License, Version 2.0
