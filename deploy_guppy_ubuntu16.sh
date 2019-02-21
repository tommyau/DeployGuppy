  sudo apt-get update 
  sudo apt-get install -y wget lsb-release 
  export PLATFORM=$(lsb_release -cs) 
  wget -O- https://mirror.oxfordnanoportal.com/apt/ont-repo.pub | sudo apt-key add - 
  echo "deb http://mirror.oxfordnanoportal.com/apt ${PLATFORM}-stable non-free" | sudo tee /etc/apt/sources.list.d/nanoporetech.sources.list 
  sudo apt-get update
  sudo apt-get install -y ont-guppy
