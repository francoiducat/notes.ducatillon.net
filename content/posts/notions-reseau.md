---
title: "Notions de bases en réseau"
date: "2011-01-11"
categories: [Administration Systeme]
tags: [Réseau]
---
# Notions de bases en réseau

## Réseau (informatique)
Ensemble d'ordinateurs reliés entre eux (cables ou sans fil). Ces ordinateurs peuvent ainsi à distance:

1. Partager des ressources (modem, disque dur, lecteur de CD-Rom, applications etc.)
2. Echanger des données: documents, tchats etc.

## Cables réseau ou cable ethernet:

- UTP-CAT5 (Unshielded Twist Pair Category 5) :100mégabit/seconde
- UTP-CAT6 (Unshielded Twist Pair Category 6): 1gigabit/seconde
- cables ethernet droits: relie un ordinateur à un switch
- cables ethernet croisés: relie 2 ordinateurs entre eux

## Carte réseau

Matériel qui permet d'accéder au réseau. C'est par là que les données transites. La carte réseau fourni une adresse MAC à l'ordinateur en question afin de l'identifier sur le réseau (adresse physique). Une carte réseau se fixe au port PCI de l'ordinateur.

## Concentrateur (Hub)

Matériel qui permet l'échange des données. Il reçoit des données par un port, et envoie ce qu'il reçoit aux autres ports. Il a une interface de _réception_ (un port) et une interface de _diffusion_ (plusieurs autres ports par où les autres ordinateurs sont connectés).

Commutateur (switch)

Matériel qui permet l'échange des données. Il transmet des données aux autres ordinateurs _en se basant sur leurs adresses MAC_

## Routeur

Matériel qui permet l'échange des données. Il est la frontière entre le réseau local (câbles Ethernet ou WIFI) et le réseau Interent (câble branché sur la prise téléphonique).

## Passerelle

Système qui permet de relier deux réseaux différents. Ça peut-être sous une machine sous un logiciel. Exemple 2 réseaux qui n'utiliseraient pas le même protocole.

## LAN (Local Area Network) ou WLAN (Wireless Local Area Network)

Réseau limité à un espace géographique comme un bâtiment par exemple, avec ou sans fil. C'est un réseau local.

## WAN (Wide Area Network)

Réseau étendu. Un WAN et un ensemble de LAN relié entre eux.

## Topologie de réseau

### Bus

### Etoile
Routeur, commutateur ou concentrateur se situe au centre du réseau et tous les ordinateurs y sont connectés. S'ils veulent communiquer entre eux ils doivent forcément passer par le routeur.

### Mesh
ou maillé, tous les ordinateurs sont reliés entre eux par des cables.

### Anneau, hybride

## Adresse IP

Adresse pour communiquer avec l'ordinateur. Elle est relative au réseau. C'est le seul moyen d'identification des machines sur Internet.

On distingue:

### IPv4
4 nombres compris entre 1 et 255, séparés par des points.

Une adresse IPv4 est constituée de 32 bits séparés en 4 portions par des points. (1byte = 1octet = 8bits). Une adresse IP est donc constituée de 4 octets, ou 4 bytes soit 32 bits. Exemple : 192.168.0.10

### IPv6
8 groupes de 2 octets représentés en hexadécimal. Exemple 1fff:0011:0a88:85a3:6500:0320:ac1f:8001

## Masque de sous-réseau

Une partie supplémentaire de l'adresse où trouver une machine connectée au réseau.

## Adresse MAC

Adresse relative à la carte réseau. Identifiant unique attribué à la carte réseau. Exemple: 01:22:64:31:78:AC

## Sous réseau

C'est un réseau dans un réseau. Plusieurs sous-réseaux peuvent faire partie du même réseau.

## Masque réseau

Nom du sous-réseau. Exemple : 255.255.255.0

## Protocole

Langue du sous-réseau pour communiquer avec un autre sous-réseau (dans le réseau).

Pour que 2 machines communiquent entre elles dans un réseau elles doivent:

- Utiliser le même protocole
- Appartenir au même sous-réseau
- Connaitre leur adresse IP

Pour que 2 machines d'un sous-réseau différent communiquent entre elles il faut une passerelle.

## Architecture réseau

- client/serveur
- pair à pair (peer to peer): partage de fichiers

## Classes

Ensemble d'adresses IP. Chaque adresse IP appartient à une classe principale (plage). Chaque classe a un masque de sous-réseau **par défaut**. Dès que l'on doone une adresse IP  à la carte réseau, le système d'exploitation lui assigne directement un masque de sous-réseau par défaut selon la classe à laquelle appartient l'adresse IP. Il existe 5 classes d'adresses IP: A, B, C, D, E.

### Classe A

Adresses IP se situent entre 1.0.0.0 et 127.255.255.255.

Masque de sous-réseau par défaut : 255.0.0.0

Adressess IP entre 127.0.0.0 et 127.255.255.255 sert pour les tests spécifiques.

Exemple : 110.168.0.10

Ici 110 est le network ID. On est dans le réseau 110

168.0.10 est l'host ID soit l'adresse de la carte réseau

Grâce à la répartition des octets entre network ID et host ID, **16 777 214 adresses IP** **par réseau** sont disponibles et 126 réseaux.

### Classe B

Adresses IP entre 128.0.0.0 et 191.255.255.255.

Masque de sous-réseau par défaut : 255.255.0.0.

Exemple: 170.40.0.6

Ici 170.40 est le network ID. On est dans le réseau 170.40

0.6 est l'host ID. L'adresse 0.6 appartient au réseau 170.40

**65 534 ordinateurs par réseau.**

### Classe C

Adresse IP entre 192.0.0.0 et 223.255.255.255.

Le masque de sous-réseau par défaut est 255.255.255.0.

**254 adresses IP par réseau**, et 2 097 152 réseaux.

Envoi de données dans le réseau:

**L'unicast :** dans ce cas, on envoie des données à un seul ordinateur ;

**Le multicast :** l'envoi des données se fait vers un groupe d'ordinateurs ;

**Le broadcast :** on envoie des données à tous les ordinateurs du réseau.

Pour la classe C: l'adresse 255 est une adresse de type broadcast (d'où 254 adresses IP possibles par réseau dans la classe C et non pas 255 puisque cette adresse ne peut être prise par un hôte)

Pour la classe B: l'adresse 255.255 est l'adresse de broadcast

Pour la classe A: l'adresse 255.255.255 est l'adresse de broadcast

### Classe privée

Portée d'adresses IP dans une classe (A,B,C) réservée pour un usage particulier ou par convention.

Exemple:

- la portée 169.254.0.0 - 169.254.255.255 appartient à la classe privée réservé par Microsoft dans la classe B.
- la portée 192.168.0.0 - 192.168.255.255 appartient à une classe privée dans la classe C. Il faudra le service NAT pour accéder à Internet.
- la portée 172.16.0.0 à 172.31.255.255 appartient à une classe privé de la classe B.
- la portée 10.0.0.0 à 10.255.255.255 appartient à une classe privé de la classe A.

NB: En général les FAI proposent des adresses appartenant à des classes privées.
