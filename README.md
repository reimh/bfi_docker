# bfi_docker


#GitHub client auf der VM einrichten
git config --global user.email "mail@mymail.de"
git config --global user.name "reimh"
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
#SSH public key einfügen unter: in GitHub->Settings->SSH and GPG keys->New SSH key


#Repo initialisieren
echo "# bfi_docker" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:reimh/bfi_docker.git
git push -u origin main
