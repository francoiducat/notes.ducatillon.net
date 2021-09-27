---
title: Charger ses propres fichiers .css et .js dans Wordpress
description : Charger ses propres fichiers .css et .js dans Wordpress
date: 2010-12-02
categories: [
    "WordPress"
]
tags: [
    "css",
    "jquery"
]
---

# Charger ses propres fichiers .css et .js dans Wordpress

## Objectif
Charger un ou plusieurs fichiers .js et/ou .css afin de créer une animation ou ajouter un effet de style.

## Solution

Sur un site "non wordpress" on pourrait inclure nos scripts entre les balises `<head>` de notre page HTML.

Avec WordPress (3.X.X et 4.X.X) une des solutions possible est d'utiliser les méthodes

- `_wp_enqueue_script_`
- `_wp_enqueue_style_`

du fichier `function.php`.

Voici un exemple de code à inclure dans le fichier function.php :

{{< highlight php >}}

//Créer une fonction pour appeler les fichiers javascript et css
<?php function load_my_files() {   
  // Charger les fichiers SAUF sur l'administration du site
  if (!is_admin()) {
    //Load js files
    wp_enqueue_script('script1', '/wp-content/themes/custom_theme/js/script1.js');
    wp_enqueue_script('script2', '/wp-content/themes/custom_theme/js/script2.js');
    //Load css files
    wp_enqueue_style('style2', '/wp-content/themes/custom_theme/css/style2.css');
    wp_enqueue_style('style1', '/wp-content/themes/custom_theme/css/style1.css');
      }
    }
    // Charger notre fonction à l'initialisation
    add_action('init', 'load_my_files');
    ?>
{{< /highlight >}}


Puis déposer sur votre serveur les fichiers .js et .css à dans les dossiers créés à cet effet comme dans l'example ci-dessus
