flutter build web --release
git add -f build/web
git stash
git checkout gh-pages
git clean -xdf
git rm -rf .
git commit -m "[Auto] release @ $(date)"
git stash pop
git mv build/web/* .
git commit --amend --no-edit
git push
git checkout master
