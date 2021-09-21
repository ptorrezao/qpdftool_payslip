# QPDF Tool for Payslips

## Context

My company provides the Payslips in Protected PDFs, but in order to keep track of all of the payslips, I needed an tool that Uncrypt the PDF, Merge them and Encrypt again.

### Requirments

1. Docker Installed

### How to use the script

1. Put the documents on the folder
2. Copy the  ```safe.env``` file and edit the value of '```secretPassword```' to your document password
3. Run the following command
    ```docker-compose up```
4. Inspect the output folder should be a document created for the date of today
