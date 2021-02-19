#!/bin/bash
cd source
for scel in *.scel
do
  scel2org ${scel} -o ../pool/${scel}.org
done

cd ../builder
mv ../pool/* pool
echo pool/*.org > ball.org
echo pyPhrase.org >> ball.org
sort ball.org > tmp.org
uniq tmp.org > ball.org
createPYMB gbkpy.org ball.org
rm ball.org
rm tmp.org
rm pool/*
rm pyERROR
rm pyPhrase.ok
mv *.mb ../built
cd ..

    
