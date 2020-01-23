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
```sh
mkfs -t vfat /dev/sdc1 
```
- rename key
`sudo mlabel -i /dev/sdc1 -s ::"nom"`

## PDF
- cut pdf pages
`pdftk full-pdf.pdf cat 12-15 output outfile.pdf`
- rotate entire document
`pdftk in.pdf cat 1-endwest output out.pdf`

## Archives
- zip
```sh
zip archive.zip [file list]
zip -r archive.zip [dir]
zip -r archive.zip *
```

- unzip: 
`unzip archive.zip - d directory`

## Backup
```sh
#!/bin/bash
dir=/home/leo/
backup_dir=/run/media/leo/bounty/backup/
rsync -av --stats --delete --progress --cvs-exclude $dir $backup_dir
```

## VIM

- _NEW_
	* `*`, `#` -> search for word under cursor, forward, backwards
	* `'.`  -> to the last editded line
	* `gi`  -> go to last edited location, in insert mode
	* `g;`, `g,` or `<CTRL>-I`, `<CTRL>-O` -> go forward, backwards in the last edition locations
	* `:set spell spelllang=fr` -> french spellcheck
	* `>>` or `<<` -> indent
	* `gv` -> reselct previous visual selection
	* Replace in visual selection. Press :  and then enter s/foo/bar/g


- Visual mode:
	* `o`   -> go to the other end of the area
	* `O`   -> in block selection, go to the oposite corner

- Regex & Cie
	* `:g/pattern/d` -> delete lines with pattern
	* `:g/^$/d`      -> delete empty lines
	* `c` at the end -> ask for confirmation

## Pdf
- `pdftk <input-file> <operator> output <file>`
- `pdftk <input-file> output <file> <operator>`
- `pdftk in.pdf cat 1-endwest output out.pdf` (rotate 90 trigo)
- `pdftk in.pdf cat 1-10 12-end output out.pdf` (remove page 11)

## Redshift
Tempetature entre 1000 et 25000
`redshift -P -O 2000`
