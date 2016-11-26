cd $HOME;

#criar pastas basicas do ambiente de desenvolvimento
mkdir -p ~/development/projects
mkdir -p ~/development/keys
mkdir -p ~/development/libs
mkdir -p ~/development/applications

# mover arquivos deste clone para a pasta de projeto
mkdir -p ~/development/projects/linux-personal-env
cp ./* ~/development/projects/linux-personal-env
cd ~/development/projects/linux-personal-env

echo "setando link para o arquivo .profile na HOME do usuario"
ln -s ~/.profile /development/projects/linux-personal-env/.profile
