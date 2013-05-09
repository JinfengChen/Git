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
git init          ##start a git project
git add work.sh   ##add file "work.sh" to git
git commit -m "first try"   ##commit to git
git remote add origin https://github.com/JinfengChen/Git.git     ##add files to remote site
git push -u origin master

echo "add files into exists git"
git add work.sh   
git commit -m "update"
git remote add update https://github.com/JinfengChen/Git.git
git push -u update master




