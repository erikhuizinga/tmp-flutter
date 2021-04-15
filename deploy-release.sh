git reset
git checkout .
flutter build web --release
git add -f build/web
git stash -u
git checkout gh-pages
git clean -xdf
git stash pop
mv build/web/* .
git add -A
git commit -m "[Auto] release @ $(date)"
git push
git checkout master
