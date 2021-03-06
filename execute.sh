#!/bin/sh

echo "Working directory: $(dirname $(readlink -f $0))"
echo "Creating .config symlinks..."
for D in `find $(dirname $(readlink -f $0))/.config -maxdepth 1 -mindepth 1 -type d` 
do
    echo "Symlinking $(basename $D) to $HOME/.config/$(basename $D)"
    rm -r $HOME/.config/$(basename $D)
    ln -s $D $HOME/.config/$(basename $D)
done
for F in `find $(dirname $(readlink -f $0))/.config -maxdepth 1 -mindepth 1 -type f`
do
    echo "Symlinking $(basename $F) to $HOME/.config/$(basename $F)"
    rm $HOME/.config/$(basename $F)
    ln -s $F $HOME/.config/$(basename $F)
done
echo "Symlinking scripts to $HOME/scripts"
ln -s $(dirname $(readlink -f $0))/scripts $HOME/scripts
echo "Symlinking .rc files to $HOME directory"
for F in `find $(dirname $(readlink -f $0))/.*rc`
do
   echo "Symlinking $(basename $F) to $HOME/$(basename $F)"
   rm $HOME/$(basename $F)
   ln -s $F $HOME/$(basename $F)
done
echo "Symlinking .conf files to $HOME directory"
for F in `find $(dirname $(readlink -f $0))/.*conf`
do
   echo "Symlinking $(basename $F) to $HOME/$(basename $F)"
   rm $HOME/$(basename $F)
   ln -s $F $HOME/$(basename $F)
done
echo "Symlinking .Xresources to $HOME/.Xresources"
rm $HOME/.Xresources 
ln -s $(dirname $(readlink -f $0))/.Xresources $HOME/.Xresources
echo "Symlinking .ncmpcpp to $HOME/.ncmpcpp"
rm $HOME/.ncmpcpp
ln -s $(dirname $(readlink -f $0))/.ncmpcpp $HOME/.ncmpcpp
echo "Everything's done!"
