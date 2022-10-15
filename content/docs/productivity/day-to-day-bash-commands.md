# Day to day bash commands for developers

![Penguin](/img/linux_pingouin.png)


## Bash commands

- `cd nom du dossier` entrer dans un dossier 
- `cd ..` : revenir au dossier précédant 
- `cat nomdufichier` : affiche le contenu d'un fichier 
- `pwd` : dis moi où je suis ! 
- `mkdir nomdudossier` : créer un dossier
- `cd / :` Aller à la racine du serveur 
- `cd :` Aller au répertoire de l'utilisateur (la "home directory" de l'utilisateur) 
- `df -h :` Affiche les informations sur le volume de stockage. (h pour **h**uman) 
- `du -hd1 (anciennement du -h --max-depth=1):` Affiche les informations sur le volume de stockage du répertoire dans lequel on se trouve.("disk free","disk usage")
- `rmdir nomdudossier :` supprimer un dossier
- `rmdir -rf nomdudossier :` supprimer un dossier **non vide.** Attention, cela supprime tous le contenu à l'intérieur du dossier (sous dossiers et fichiers) 
- `touch nomdufichier` : créer un fichier ou mettre à jour la date de modification sur un fichier existant. 
- `chmod 700 nomdufichier` : Modifier les permissions du fichier/dossier 
- `chmod 777 -R dossier` : Modifier les permissions du dossier ainsi que celles de tous les sous-dossiers et fichiers inclus 
- `chwon -R root:root mondossier` : Modifie le propriétaire d'un dossier (avec sous dossiers et fichiers inclus dans mondossier) 
- `passwd utilisateur`: Changer le mot de passe de l'utilisateur 
- `su -` : Se connecter en root 
- `su -utilisateur` : Se connecter avec utilisateur 
- `ls` : Lister le contenu d'un dossier 
- `ls -l (ou ll)` : Liste le contenu d'un dossier avec le détail (permission, user, group) 
- `ls -ltr` : Afficher les fichiers du plus ancien au plus récent 
- `ls -a` : Lister tout le contenu d'un dossier (dont les fichiers cachés) 
- `ls -h` : Lister les repertoires en affichant le volume des fichiers de manière "lisible" 
- `ls -t | head -n 1` : Liste le dernier le fichier édité. Ici, la commande "head" permet d'afficher le nombre de ligne voulu par rapport au résultat de la commande ls (ici une seule ligne) 
- `ls -d \*/` : Lister UNIQUEMENT les repertoires. 
- `~/` : équivaut à /home/dossierUser 
- `ls -l > ls-l.txt` : Liste le contenu du répertoire dans le fichier ls-l.txt 
- `ls -l > ls-l.txt 2>&1` : Liste uniquement les erreurs liés à la commande ls -l dans le fichier ls-l.txt 
- `scp /Users/john/Documents/mondossier/\* user@IP:~/mondossier` : Envoyer un fichier sur le serveur 
- `scp -r /Users/john/Documents/mondossier/\* user@IP:~/mondossier` : Envoyer un fichier sur le serveur dont le contenu des dossiers 
- `scp -P 5555 /Users/john/archive.tar.gz user@IP:~/mondossier` : Envoyer un fichier compressé en spécifiant le port. (-P) 
- `cp -rp /var/tmp/prestashop\_1.5.2.0  /var/www/html/` : Déplacer (=copier/coller) un répertoire d'un emplacement A à un emplacement B en gardant les permissions des fichiers.
- `tar -pczf nameoftarball.tar.gz directoryname/` Compresser et conserver les permissions des fichiers(-p) 
- `tar -xzvf nameoftarball.tar.gz` : Décompresser une archive. \[root@127.0.0.1 demo\]# 
- `mv folder/\* .`  : Déplace le contenu du dossier "folder" dans le dossier "demo" 
- `unzip package.zip -d /path/to/directory/to/unzip` : Dézipper le contenu de "package.zip" en choisissant le répertoire de destination. 
- `gunzip -c backup.sql.gzip > backup.sql :` Extraire le fichier "backup.sql.gzip" pour contourner l'erreur "Gunzip unknwon suffix" 
- `find / -name Toto.log` : Recherche le fichier Toto.log sur le serveur 
- `find . -iname Toto.log` : Recherche le fichier Toto.log dans le répertoire où l'on se trouve.(case sensitive : sensible aux majuscules et minuscules) 
- `find . -iname php.ini` : Recherche le fichier php.ini dans le répertoire où l'on se trouve.(sans prendre en compte les majuscules et minuscules) 
- `find . -mtime -3 | grep test` : Recherche les fichiers qui ont été modifié dans les 3 derniers jours et contenant "test" dans leur nom. 
- `find . -mtime +3 | grep test` : Recherche les fichiers qui ont été modifié il y a plus de 3 jours et contenant "test" dans leur nom. 
- `locate php.ini` : Recherche le fichier php.ini sur le serveur 
- `grep -lR "chaine de caractere" \*` : Rechercher une chaine de caractère dans tous les fichiers du dossier dans lequel on se trouve. 
- `find /search/in/this/folder/ -type d -name "wordpress"` : Recherche le répertoire intitulé "wordpress" dans le répertoire /search/in/this/folder/ 
- `diff file1 file2 | more` : Afficher les différences entre 2 fichiers; 
- `\> fileToPurge.txt` : Effacer le contenu du fichier sans supprimer le fichier lui-même. 
- `grep -Ri --color motarecherche /repertoire/ou/rechercher/` : Rechercher un mot dans un repertoire sans prendre en compte la casse et en affichant le mot à rechercher en couleur. 
- `sed -i 's/mot\_a\_rechercher/remplacé\_par\_celuici-meme/' fichier\_en\_question.txt` : Commande de rechercher/remplacer de "mot\_a\_rechercher" en "remplacé\_par\_celuici-meme" dans le fichier fichier\_en\_question.txt 
- `sed -i 's/mot\_a\_rechercher/remplacé\_par\_celuici-meme/g' fichier\_en\_question.txt` : Commande de rechercher/remplacer de "mot\_a\_rechercher" en "remplacé\_par\_celuici-meme" dans le fichier fichier\_en\_question.txt. Le `/g` permet de rechercher/remplacer plusieurs occurences de "mot\_a\_rechercher" sur une même ligne. 
- `grep motarechercher/etc/php.ini` : Rechercher motarechercher dans le fichier php.ini 
- `grep -v motaexclure/etc/php.ini` : Rechercher TOUT sauf motarechercher dans le fichier php.ini 
- `history` : affiche l'historique des commandes 
- `history | grep install` : Recherche dans l'historique des commandes celles qui contiennent le mot install 
- `history -c` : Efface l'historique 
- `man command`: Afficher les possibilités de la commande (Exemple: man ls) 
- `q` : Quitter l'écran 
- `exit` : Log out le user 
- `clear` : Rafraichir l'écran 
- `shutdown -r now` : Redémarrer le serveur 
- `uname -m` : Déterminer si la version de Linux utilisée est en 32 bit ou 64 bit x86\_64 >>> 64-bit kernel i686 >>> 32-bit kernel 
- `ps -fu $USER` : Visualiser les USERS en activité.("process statistics") 
- `ps -ef | grep ftp` : Visualiser les processus en activité contenant "ftp" 
- `service apache2 start &` : Exécuter un script en tâche de fond. 
- `env` : Affiche les variables d'environnement. 
- `top` : Affiche les performances machines instantanées. Une fois dans le "top" en appuyant sur "SHIFT 1" permet d'afficher les performances de chaque CPU.

### Quick history search in terminal

Common search history is a combination of `history` and `grep` key words :
`history | grep word_to_search`

Great alternative in a shortcut to search in your terminal history:
`Ctrl r` + `word_to_search`

### Find a process running on a specific port

#### Find
`lsof -n -i4TCP:60901`
#### Stop
`kill -9 PID`

## Postgres commands

- `psql postgres` : ouvrir l'invité de commande postgres ![postgres](images/psql_postgres.png "postgres") 
- `psql -h localhost -U myusername mydatabasename` : Se connecter à une base de données 
- `postgres=# \\dt+` : lister les tables avec leur volumétrie (dans l'invit' de commande postgres)

## Mysql commands

- `mysql -u user -p mypassword dbname` : Se connecter à une base de données 
- `mysql -u user -pmypassword dbname` : Se connecter à une base de données en spécifiant le mot de passe. (Retirer l'espace) 
- `/Applications/MAMP/Library/bin/mysql -u user -p dbname` : Se connecter à une base de données de l'application MAMP. 
- `mysqldump -pot -u \[uname\] -p\[pass\] \[dbname\] > \[backupfile.sql\]` : Dump mysql 
- `mysqldump -pot -R -u \[uname\] -p\[pass\] \[dbname\] > \[backupfile.sql\]` : Dump mysql. le -R permet d'inclure les procédures stockées 
- `mysqldump -u \[uname\] -p\[pass\] \[dbname\] | gzip -9 > \[backupfile.sql.gz\]` : Dump avec compression 
- `mysql -u \[uname\] -p\[pass\] \[db\_to\_restore\] < \[backupfile.sql\]` : Restaurer mysqldump 
- `gunzip < \[backupfile.sql.gz\] | mysql -u \[uname\] -p \[pass\] \[dbname\]` : Restaurer un dump avec compression 
- `mysqlimport -u \[uname\] -p \[pass\] \[dbname\] \[backupfile.sql\]` : Restaurer une base de données déjà existante 
- `mysql –u \[uname\] -p \[dbname\] < \[script.sql\]` : Jouer le fichier script.sql 
- `nohup sh script.sh > script\_out.log &` : Permet de jouer un script sql en tâche de fond. Cela s'avère utile pour jouer des scripts dont les temps d'exécution sont long. En cas de coupure réseau avec la machine distante par exemple, le script continuera de s'exécuter.

## VI commands

- `vim nomdufichier` : éditer un fichier
- `/ mot\_a\_rechercher` : recherche " mot\_a\_rechercher"="" (vers="" le="" bas="" du="" fichier)="" dans="" fichier="" ouvert="" avec="" vi<br=""> Après avoir saisi / mot\_a\_rechercher Taper "`n`" : Permet de rechercher les occurrences suivantes du mot à rechercher 
- `? mot\_a\_rechercher` : recherche "mot\_a\_rechercher" vers le haut du fichier 
- `:166` : Aller à la ligne 166 `i` : i pour Insert. Permet d'éditer le fichier 
- `:wq` : Sauvegarder (Write) et Quitter 
- `dd` : Efface la ligne où on se situe. 
- `:set paste` : à utiliser avec l'éditeur vi avant d'insérer du contenu pour conserver la forme du copier/coller. (espacement de lignes etc.) 
- `gg` : Aller à la fin du fichier. 
- `G` : Aller au début du fichier. 
- `:echo line('$')` : Permet d'afficher le nombre de lignes du fichier en question.</br="">

## Network commands

- `host` `nomdedomaine.com :` Affiche l'adresse IP du domaine 
- `hostname` : Affiche le nom de la machine 
- `nslookup "www.nomdedomaine.com :` Affiche l'adresse IP du domaine 
- `tracert nomdedomaine.com` : Affiche la route réseau empruntée 
- `telnet nomdedomaine 53` : Moyen de vérifier que ma machine peut communiquer avec nomdedomaine sur le port 53

## Split a hug file

###  Split

```
split -b 512M myFile.gzip
``` 
qui donne : `xaa xab xac xad etc.`

### Unsplit

```
cat x\* > myFile.gzip
```

## Node commands

 - `node -v`: Display node version
- `sudo npm cache clean -f (clear npm cache) sudo npm install -g n sudo n stable`: Install node latest sable release version

### Edit npm registry

#### Set
`npm config set registry https://your-custom-npm-registry.com/`

This command updates your `.npmrc` file with your new registry URL:
registry=https://your-custom-npm-registry.com/

#### Get
`npm config get registry`