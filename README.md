# Site Nuit Debout Epinal

Ceci est le code du site [nuitdeboutepinal.fr](http://www.nuitdeboutepinal.fr/). Le site est construit sur [Jekyll](http://jekyllrb.com/), générateur de site statiques (= sans base de donnée, sans configuration lourde), et utilise une version adaptée du thème [Skinny Bones demo](http://mmistakes.github.io/skinny-bones-jekyll/).


## Architecture générale

N'apparaissent ici que les fichiers les plus intéressants dans une optique de contribution. Ne pas hésitez à se référer à la [page Getting Started](https://mmistakes.github.io/skinny-bones-jekyll/getting-started/) du thème utilisé pour avoir + de détails sur les autres fichiers.

``` bash
skinny-bones-jekyll-master
├── _site                               # le site une fois compilé -> /!\ ne pas modifier ici, ce sera écrasé !
├── _commissions                        # PAGES de contenu DES COMMISSIONS
|    ├── actions.html                   # page de la commission action
|    ├── animation.html                 # page de la commission animation
|    └── ...
├── _data                               # PRINCIPALES DONNEES du site au format yaml
|    ├── agenda.yml                     # les dates de Nuit Debout Epinal (page d'accueil)
|    ├── commissions.yml                # infos liées aux commissions (pages commissions)
|    ├── navigation.yml                 # gestion de la barre de navigation (layout)
|    ├── nde-links.yml                  # liens divers de Nuit Debout Epinal (page d'accueil)
|    └── revue-presse.yml               # liens de la revue de presse (page revue de presse)
├── _includes                           # blocs de code réutilisables ailleurs
├── _layouts                            # mise en page générale, éléments récurrents autour du contenu
|    ├── commission.html                # layout des pages détail des commissions
|    ├── default.html                   # layout de base, sur lequel s'appuie les autres layouts
|    ├── home.html                      # layout de la page d'accueil
|    └── page.html                      # layout des pages liste (commissions, revue de presse...)
├── _pages                              # pages "listes" du site
|    ├── commissions.html               # contenu de la page liste des commissions (/commissions/)
|    ├── revue-presse.html              # contenu de la page revue de presse (/revue-presse/)
├── _sass                               # dossier contenant le style au format sass
├── css
|   └── main.scss                       # fichier permettant de charger tous les autres morceaux de css (sass)
├── fonts                               # polices utilisées
├── images                              # images
├── js                                  # fichiers javascript
├── index.html                          # contenu de la page d'accueil
└── _config.yml                         # fichier de configuration du site
```


## Contribuer

### Contribution rapide par édition des fichiers de ce dossier

C'est le type de contribution qui demande le moins de connaissance technique.
Il s'agit ici de la modification de données et de contenu, et non du site (logique, aspect visuel, armature du site...)

#### Modifier les données du site

Vous pouvez modifier les données suivantes :

- dates des prochaines Nuit Debout    -> fichier `_data/agenda.yml`
- infos générales sur les commissions -> fichier `_data/commissions.yml`
- liens Nuit Debout Epinal            -> fichier `_data/nde-links.yml`
- revue de presse                     -> fichier `_data/revue-presse.yml`

**Attention !** Ne pas modifier les intitulés, mais uniquement le contenu (sous peine de faire disparaitre des infos du site) !

```yaml
  # Exemple de l'agenda. La ligne suivante :
  date_normal: 21 avril
  # peut être modifiée ainsi :
  date_normal: 28 avril
  # mais pas en :
  tirlipinpin_sur_le_chihuahua: 21 avril
```

**Attention !** Si vous voulez rajouter des intitulés et leur contenu, prévenez-moi, car il faut que je fasse en sorte que ce nouveau contenu soit affiché (ce n'est pas automatique).

#### Modifier le contenu des pages commissions

- La page de contenu de chaque commission se trouve, à son nom, dans le dossier `_commissions `.
- Les contenus existants (photos, description...) sont gérés automatiquement, à partir des données présentes dans `_data/commissions.yml`, et du le layout `_layout/commission.html`.
- le contenu des pages commissions peut être rédigé en `html` (fichiers se terminant par `.html`) ou en [markdown](https://fr.wikipedia.org/wiki/Markdown) (fichiers se terminant par `.md`). Vous pouvez vous-même modifier l'extension du fichier, suivant le format avec lequel vous êtes le + à l'aise.

#### Procédure générale

Pour garantir l'intégrité du site, vos contributions doivent d'abord être validées (ceci pour que le site ne soit pas cassé, pas dans une optique de censure hein).

Vos contributions génèreront automatiquement une demande de validation de la part des administrateurs du dossier du site.

Une fois les modifications validées, elles apparaitront automatiquement dans le site.

*Comment procéder ?*

- **Naviguez** dans l'armature des dossiers jusqu'à arriver à la page qui vous intéresse.
- Une fois cette page affichée, cliquez sur l'**icon 'crayon'** (entre le bouton 'History' et la poubelle, au sommet du contenu de la page) pour commencer l'édition.
- Un **avertissement** vous informe que vous vous apprêtez à modifier un document auquel vous n'avez pas accès. C'est **normal**. (me prévenir si ce n'était pas le cas !)
- **Faites vos modifications** directement.
- Vous pouvez avoir un **aperçu** du rendu en cliquant sur `Preview change` (intéressant pour les `.html` et les `.md`)
- Une fois vos modifications terminées, cliquez sur le bouton vert en bas `Propose file change`.
- Vous arrivez sur une page qui récapitule les modifications proposées. Si vous êtes ok avec ces modifications, cliquez sur le bouton vert en haut `Create pull request`.
- Vous pouvez modifier le titre et la description de votre modification (pas obligatoire), puis re-cliquez sur le bouton vert`Create pull request`, cette fois en bas.
- **Voilà !** Votre demande de modification est faite !

## Contribution experte par développement du code source

### Installation locale

Se référer à la documentation de [Skinny Bones](https://mmistakes.github.io/skinny-bones-jekyll/), ou me contacter (manque de temps, là, maintenant).
