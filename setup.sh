#criar pastas basicas do ambiente de desenvolvimento
mkdir -p ~/development/projects
mkdir -p ~/development/keys
mkdir -p ~/development/libs
mkdir -p ~/development/applications

# mover arquivos deste clone para a pasta de projeto
echo "criando arquivos de escript em linux-personal-env"
mkdir -p ~/development/projects/linux-personal-env
cp -r ./scripts ~/development/projects/linux-personal-env
cd ~/development/projects/linux-personal-env

echo "setando link para o arquivo .profile na HOME do usuario"
rm $HOME/.profile-previous
cat $HOME/.profile > $HOME/.profile-previous
rm $HOME/.profile
ln -s ~/development/projects/linux-personal-env/scripts/.profile $HOME/.profile

echo "Redefinindo configs do ambiente com base em novo .profile"
source $HOME/.profile

