#/bin/bash
mkdir -p Temp
mkdir -p Trash
mkdir -p Recibos
for f in Temp/*$1*.pdf; do 
   filename=${f#"Temp/"};
   echo Will unlock and prepare $filename
   qpdf --password=$2 --decrypt Temp/$filename Recibos/$filename --rotate=90:1
   mv Temp/$filename Trash/$filename
done
now=$(date +"%Y%m%d")
qpdf --empty --pages $(for i in Recibos/*Pedro*.pdf; do echo $i 1-z; done) -- Pedro_Recibos$now.pdf