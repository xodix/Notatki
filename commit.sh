d=$(date "+%d-%m %H:%M")

git add .
git commit -m "Added notes from $d"
git push

echo "DONE"