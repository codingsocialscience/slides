cd code-examples/
shopt -s nullglob
for pdf in *{pdf,PDF} ; do
    convert -density 1500 -quality 100 "$pdf" "${pdf%%.*}.png"
done
cd ..

cd figures/
shopt -s nullglob
for pdf in *{pdf,PDF} ; do
    convert -density 1500 -quality 100 "$pdf" "${pdf%%.*}.png"
done
cd ..