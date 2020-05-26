# dotfiles
This is a repository where I store my personal configuration files.

wpgtk will keep on changing dunst config which is an undesirable behavior,  
dirty way to take care of this, is using this command:  
`sudo chattr +i dotfiles/.config/dunst/dunstrc`

# Steps for ja_JP.sjis
```
localedef  -i ja_JP  -f SHIFT_JIS ./ja_JP.sjis
sed -i '/ja_JP.EUC-JP EUC-JP/i ja_JP.SJIS SHIFT_JIS  ' /etc/locale.gen
locale-gen
```
Additional change needs to be made to /bin/locale-gen.  

Change line 39:  
`localedef -i $input -c -f $charset -A /usr/share/locale/locale.alias $locale; \`  
with following:  
`localedef --no-warnings=ascii -i $input -c -f $charset -A /usr/share/locale/locale.alias $locale; \`  

Save the file and disallow any additional changes to it (e.g. by package manager) with:  
`sudo chattr +i /bin/locale-gen`  
