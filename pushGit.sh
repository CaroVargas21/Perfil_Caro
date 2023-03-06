#/bin/bash
clear

# set variables
#username=$1
#token=$2
#repo=$3
comment=$1
rama=$2
source ./VariablesVacias.sh 



git config --global user.email "car.esvargas@gmail.com"
git config --global user.name "CaroVargas21"
git config --global core.autocrlf false


# Ejecucion

   #    cd /home/giovanemere/Aprovisionamiento_Linux
   #   git clone https://$username:$token@github.com/$repo
   
   
  read -p "¿Desea clonar el repositorio?" clone
  if [[ $clone =~ ^[Yy]$ ]]
  then
    git clone git@github.com:CaroVargas21/Perfil_Caro.git
  fi
    
  echo "comment [$comment] | rama [$rama]"
  echo "inicia carga en git"
  #Para que vaya a la rama donde voy a subir
  git checkout $rama
  read -p "Press [Enter] key to continue..." readEnterKey 
  git status
  read -p "Press [Enter] key to continue..." readEnterKey
  
  git add .
  read -p "Press [Enter] key to continue..." readEnterKey
  
  git commit -m "$comment"
  read -p "Press [Enter] key to continue..." readEnterKey

  git push origin $rama
  echo -e "\n----- Fin del Script -----------------------------------------------------------"
  read -p "Press [Enter] key to continue..." readEnterKey
