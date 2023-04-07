makepkg 
mv Package-Build*.pkg.tar.zst ../
cd ../
repo-add packages.db.tar.gz
git add *
git commit -m "Updated"
git push origin main
