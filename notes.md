# Notes

## Git
- Password cache
`git config --global credential.helper "cache --timeout=3600"`
- Show remotes
`git remote -v`
- Add remote
`git remote add <shortname> <url>`
- Push/pull
`git push <shortname> master` and `git pull <shortname> master`

- Apply .gitignore rules:
	1. Commit all pending changes, then run this command:
	`git rm -r --cached .`
	1. This removes everything from the index, then just run:
	`git add .`
	1. Commit it:
	`git commit -m ".gitignore is now working"`


## Usb formating
- format fat32 (code fdisk:b)
```
mkfs -t vfat /dev/sdc1 
```
- rename key
`sudo mlabel -i /dev/sdc1 -s ::"nom"`

## PDF
- cut pdf pages
`pdftk full-pdf.pdf cat 12-15 output outfile.pdf`


## Archives
- zip
`zip archive.zip [file list]`
`zip -r archive.zip [dir]`
`zip -r archive.zip *`

- unzip
`unzip archive.zip - d directory`

## Backup
```sh
#!/bin/bash
dir=/home/leo/
backup_dir=/run/media/leo/bounty/backup/
rsync -av --stats --delete --progress --cvs-exclude $dir $backup_dir
```

## VIM

* # -> search for word under cursor, forward, backwards
'.  -> to the last editded line
gi  -> go to last edited location, in insert mode
C   -> change the rest of the line
s   -> == xi

- Visual mode:
o   -> go to the other end of the area
O   -> in block selection, go to the oposite corner

- Regex & Cie
:g/pattern/d -> delete lines with pattern
:g/^$/d      -> delete empty lines
c at the end -> ask for confirmation
