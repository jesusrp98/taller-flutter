# Script to automatically download the Flutter SDK
echo -e "=======DOWNLOAD FLUTTER SDK=======\n"

# Downloads the compressed file to /tmp
wget -O /tmp/flutter.tar.xz 'https://storage.googleapis.com/flutter_infra/releases/beta/linux/flutter_linux_v1.14.6-beta.tar.xz'

# Extract the folder from the .tar.xz file
tar xf /tmp/flutter.tar.xz -C $HOME

# Changes its name
mv $HOME/flutter $HOME/.flutter-sdk

# Update the .bashrc file
echo 'export PATH=$HOME/.flutter-sdk/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Finish
echo -e "\tFlutter SDK successfully installed!"
