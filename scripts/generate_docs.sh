#/bin/bash

echo Checking docs
arr=()
for f in  /work/docs/*.pdf; do 
   filename=${f#"/work/docs/"};
   arr+=($filename)
   qpdf --password=$secredPassword --decrypt /work/docs/$filename /work/processed_docs/$filename 
done
echo "List of ${#arr[@]} documents (${arr[@]})"
now=$(date +"%Y%m%d")
echo Merging docs $now.pdf will be the output
qpdf --empty --pages $(for i in /work/processed_docs/*.pdf; do echo $i 1-z; done) -- /work/output/$now.pdf
echo Output produced with Success
rm /work/processed_docs/*
echo Cleaning the folders