# Guide de Contribution au Projet

## Politique de Gestion des Branches -> Gerry

- Explication de la politique de gestion des branches -> 
- Directives sur la manière dont les contributeurs devraient nommer leurs branches : -> DevFeaturesNames
- Basé sur les problèmes (issues)
- Basé sur les noms des contributeurs
- Placement des branches

## Intégration dans la Branche Principale -> Gerry

- Critères pour fusionner les branches dans la branche principale -> Regarder au lien et Merge avec main si tout les github actions sont passé
- Configuration des permissions pour les branches, si nécessaire -> Ne pas créer des branches de branches etc... , etc ...

## Conventions pour les Messages de Commit
<!-- - Exigences pour les conventions des messages de commit -->

Les conventions pour les messages de commit sont essentielles pour maintenir un historique explicite. La convention suivante est simple et intuitive, garantissant des messages de commit de qualité. Il est également préférable d'utiliser une langue commune, en l'occurrence l'anglais.

Le message du commit doit être structuré comme suit :
```
<type>[optional scope]: <description>

[optional body]

[optional footer]
```

référence: https://www.conventionalcommits.org/en/v1.0.0/

## Conventions de Code
<!-- - Spécifications pour les conventions de code, si spécifiées -->

Ce projet ne dispose pas de ses propres directives spécifiques, mais il suit rigoureusement les normes de codage propres au framework Django et au langage Python. Ces standards sont clairement définis dans leur documentation respective (ci-dessous). En outre, il est essentiel de maintenir un code compréhensible grâce à des opérations de refactoring et de le documenter adéquatement.

- Django :\
https://docs.djangoproject.com/en/dev/internals/contributing/writing-code/coding-style/
- Python :\
https://peps.python.org/pep-0008/

## Politiques de Publication -> Corentin

- Aperçu de la politique de publication
- Schéma de publication
- Fréquence des publications

-> Release si nouvelle features -> Sous release suite à la découverte de bug
