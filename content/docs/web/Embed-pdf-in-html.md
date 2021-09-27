# Afficher un pdf dans une page HTML

Pour afficher un document pdf dans une page HTML, plusieurs solutions existent.

Vous pouvez par exemple utiliser les services de [scribd.com](http://www.scribd.com "scribd.com") ou tout simplement insérer le code HTML suivant dans votre page :


Avec la balise `embed` (/!\ non compatible sur naviguateurs mobiles)
```html
<embed src="https://yoursite.com/yourdocument.pdf" width="100%" height="400p">
```

ou avec la balise `iframe` qui est compatible sur naviguateur mobile.

```html
<iframe src="https://docs.google.com/viewer?url=https://yoursite.com/pdf/yourdocument.pdf&embedded=true" style="width:100%; height:500px;" frameborder="0"></iframe>
```

Voici le résultat :

{{< embedpdf hugo_framework.pdf >}}
