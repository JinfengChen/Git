echo "Install git"
git clone https://github.com/git/git.git
cd git
make prefix=/rhome/cjinfeng/git/git
make install prefix=/rhome/cjinfeng/git/git

echo "Configure git"
git config --global user.name "JinfengChen"
git config --global user.email "jinfeng7chen@gmail.com"

echo "No password"
curl -s -O http://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
chmod u+x git-credential-osxkeychain
git config --global credential.helper osxkeychain

echo "start a project in git"
git init

