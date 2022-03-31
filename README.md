# Policy Topic Model

## Pre-processing

- PDFBox 3 is required for text extraction from PDF. Download from https://pdfbox.apache.org/download.html and rename the jar file to `pdfbox-app-3.jar` and put it inside `lib/` directory. 
- Download the policy documents from the shared Google Drive, put them in `data/nat-ai/orig`
  - See list of documents here: https://docs.google.com/spreadsheets/d/1e6nCWAKRSAo3cq4O-3WUKtFp5AR7up_cr8hY2jI12Zg/edit?usp=sharing 
- Run `./pdf-to-txt.sh`
- Text files should be populated in `data/nat-ai/text`
