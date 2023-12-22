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

## Politiques de Publication 
### Aperçu de la Politique de Publication

Notre projet suit les principes du [versionnement sémantique](https://semver.org/lang/fr/) en utilisant [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) pour numéroter nos versions, et structurer le contenu des commits. Cela signifie que chaque commit suit une convention de "commentaires" identique, ce qui simplifie la gestion des versions et la communication des changements.

### Schéma de Publication

Nous utilisons un schéma de versionnement MAJEUR.MINEUR.PATCH, où chaque segment a une signification spécifique :
- MAJEUR pour des changements majeurs incompatibles avec les versions antérieures (par exemple, des changements de conception majeurs, des changements de dépendances, etc.),
- MINEUR pour des ajouts compatibles avec les versions antérieures,
- PATCH pour des corrections de bugs compatibles avec les versions antérieures.

### Fréquence des Publications

La fréquence des publications dépend des besoins du projet. Actuellement, le projet est considéré comme stable.
Les versions seront publiées si de nouvelles fonctionnalités sont demandées, si des corrections de bugs critiques sont nécéssaires, ou pour tout changement majeur qui nécessite une mise à jour.

Nous n'avons pas de calendrier de publication fixe pour le moment, mais plutôt une approche basée sur les besoins. Si de nouvelles fonctionnalités sont nécessaires ou si des problèmes critiques sont découverts, nous pouvons déclencher un nouveau cycle de publication.

### Conditions pour une Nouvelle Version

Une nouvelle version est déclenchée lorsque des changements significatifs doivent être apportés au projet. Cela peut inclure l'ajout de nouvelles fonctionnalités, la correction de bugs critiques, ou tout autre changement important qui affecte l'expérience utilisateur.

### Sous-Release Suite à la Découverte d'un Bug

En cas de découverte d'un bug critique dans une version existante, l'équipe de développement devra publier des sous-versions (patch releases) rapidement pour résoudre ces problèmes sans attendre le prochain cycle de publication majeur. Si ce n'est pas un bug critique, il peut être ajouté à la liste des tâches pour le prochain cycle de publication.

### Pull requests et tests avec GitHub Actions

Les pull requests sont utilisées pour gérer les modifications apportées au code source (les changements léger dans la documentations ne doivent pas obligatoirement passer par des pulls requests). Ces pull requests sont ensuite testées par GitHub Actions pour s'assurer que les modifications apportées ne cassent pas le code existant. Si les tests échouent, la pull request est rejetée et le contributeur doit corriger les problèmes avant de soumettre une nouvelle pull request. Si les tests réussissent, la pull request est fusionnée dans la branche principale. Toute release doit s'assurer que les tests passent avec succès.

### Utilisation de la Documentation du Changelog

Nous encourageons les contributeurs et les utilisateurs à consulter régulièrement le changelog pour suivre les mises à jour et les modifications apportées à chaque version du projet. De plus la documentation du changelog est nécessaire pour chaque nouvelle version, donc nous encourageons les contributeurs à documenter leurs changements dans le changelog via l'usage d'outils comme commitizen.