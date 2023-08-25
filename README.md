# Script de Gestion des Zones de Sécurité

## Description

Ce script permet de définir des zones de sécurité dans votre serveur FiveM utilisant le framework ESX. Les joueurs qui entrent dans ces zones verront certaines de leurs actions limitées, selon les règles que vous définissez. Les zones de sécurité sont généralement utilisées pour désactiver l'utilisation d'armes à feu ou d'autres actions indésirables dans certaines zones spécifiques.

## Installation

1. Assurez-vous d'avoir le dossier du script correctement nommé et placé dans le répertoire des ressources de votre serveur.
2. Assurez-vous que les dépendances ESX sont correctement installées et fonctionnelles.

## Utilisation

1. Définissez les zones de sécurité dans la liste `SafeZoneList` en spécifiant les coordonnées (x, y, z) du centre de la zone et le rayon de la zone en mètres.
2. Ajoutez les jobs (métiers) qui peuvent contourner les restrictions de la zone dans la liste `ByPassJob`.
3. Si vous souhaitez afficher les marqueurs de zone pour le débogage, définissez `Debug` sur `true`.
4. Les joueurs qui entrent dans une zone de sécurité verront leurs actions restreintes selon les règles définies. Par exemple, si le joueur est armé, son arme sera désarmée automatiquement.

## Fonctionnalités

- Gestion des zones de sécurité dans différentes positions.
- Restrictions d'actions pour les joueurs entrant dans une zone de sécurité.
- Bypass pour certains jobs spécifiés dans la liste `ByPassJob`.
- Option de débogage pour afficher les marqueurs de zone.

## Auteur

MaskeZen

## Version

1.0


