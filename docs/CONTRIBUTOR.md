# Guide de Contribution au Projet

## Politique de Gestion des Branches 

- Explication de la politique de gestion des branches ->
    Une branche est créee pour chaque nouvelle feature en cours de développement afin d'éviter tout conflit avec la branche main qui est la branche qui est déploiyer sur phish.e-kot.be

- Directives sur la manière dont les contributeurs devraient nommer leurs branches 
   Si une nouvelle feature est en cours de développement, on nomme celle-ci selon le caneva suivant : DevFeatureName


- Basé sur les problèmes : Lorsqu'une issue est déclanchée, on crée un branche selon le caneva suivant afin de résoudre l'issue : IssueFeatureName 


## Intégration dans la Branche Principale 

Dans le contexte du cours de DevOps, l'intégration dans la branche principale constitue une étape cruciale du processus de développement continu. Une fois que la branche de développement a réussi avec succès l'ensemble des GitHub Actions, comprenant la construction (Django Build), les tests unitaires (Django Test), et l'analyse statique de code avec SonarQube, elle devient éligible pour être fusionnée dans la branche principale (main). Cette approche garantit que seules les modifications qui respectent les normes de qualité et de fonctionnalité préalablement définies sont intégrées dans la branche principale du projet. De plus, afin de maintenir une synchronisation constante, il est impératif que chaque mise à jour de la branche principale soit fusionnée avec la branche de développement, assurant ainsi une continuité fluide du processus de développement et une gestion efficace des versions du logiciel. Ce mécanisme d'intégration régulière dans la branche principale contribue à la stabilité et à la qualité du code du projet tout en facilitant la collaboration au sein de l'équipe de développement.


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