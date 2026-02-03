# ETL - ObRail Europe

## I – Contexte

**ObRail Europe** est un observatoire indépendant spécialisé dans le ferroviaire et la mobilité durable. Créée en 2018, l'organisation s'est imposée comme un acteur de référence dans l'analyse des flux ferroviaires européens et la promotion du transport bas-carbone.

### Mission principale

- Collecter et analyser les données relatives aux dessertes ferroviaires en Europe
- Évaluer l'impact environnemental des modes de transport longue distance
- Produire des études comparatives destinées aux décideurs politiques et aux opérateurs ferroviaires
- Accompagner la transition écologique en favorisant l'usage du train comme alternative à l'avion sur les trajets intra-européens

### Partenariats

ObRail travaille en partenariat avec :

- **Les institutions européennes** (Commission européenne, Parlement européen) pour alimenter les politiques publiques
- **Des ONG environnementales** telles que Transport & Environnement ou Back-on-Track afin de renforcer l'argumentaire écologique
- **Les opérateurs ferroviaires** (SNCF, ÖBB Nightjet, DB, Trenitalia) qui souhaitent valoriser leurs services de trains de jour et de nuit

### Stratégies européennes

L'organisation s'inscrit dans les grandes stratégies européennes :

- **Le Green Deal européen**, qui vise la neutralité carbone à l'horizon 2050
- **Le programme TEN-T** (Trans-European Transport Network), qui a pour objectif de renforcer l'intégration et la compétitivité du réseau ferroviaire en Europe

## II – Objectifs du projet

ObRail souhaite comparer la contribution des trains de jour et des trains de nuit au maillage ferroviaire européen. L'objectif est de mesurer leur rôle dans la construction d'une mobilité durable et d'évaluer leur potentiel en tant qu'alternative crédible à l'avion sur les trajets intra-européens.

Pour cela, il est nécessaire de constituer un référentiel de données fiable et harmonisé qui servira :

- À l'analyse de la couverture ferroviaire
- À l'entraînement de modèles d'IA
- Au développement d'un service applicatif destiné aux partenaires

## III – Contraintes identifiées

L'étude préliminaire réalisée par ObRail Europe a mis en évidence plusieurs contraintes majeures auxquelles le projet devra répondre :

### 1. Dispersion des données

Les informations relatives aux dessertes ferroviaires européennes sont publiées par une multitude d'acteurs (opérateurs nationaux, plateformes open data, organismes statistiques). Chaque source utilise son propre format (CSV, flux GTFS, API, fichiers Excel, HTML scraping), ce qui rend leur intégration particulièrement complexe.

### 2. Qualité hétérogène des jeux de données

Les données collectées présentent des problèmes de complétude et de fiabilité :
- Doublons
- Informations manquantes (codes de gares, fuseaux horaires, identifiants de lignes)
- Incohérences dans les unités ou les formats de date/heure

Ces particularités doivent être traitées en amont afin de garantir la robustesse des analyses futures.

### 3. Absence de standardisation transfrontalière

Il n'existe pas de référentiel commun permettant de comparer facilement les dessertes ferroviaires entre pays européens. Chaque opérateur applique ses propres conventions (nomenclature des gares, structure des horaires, indicateurs de performance), ce qui empêche une comparaison homogène des données.

### 4. Exigences réglementaires

Le projet doit se conformer au **Règlement Général sur la Protection des Données (RGPD)**. Même si aucune donnée personnelle n'est traitée, les règles de sécurité, de documentation et de transparence dans la gestion des jeux de données doivent être respectées.

### 5. Contraintes temporelles

ObRail doit livrer une première version exploitable de l'entrepôt de données aux institutions européennes avant la fin de l'année. Cette échéance impose un processus ETL fiable, automatisé et reproductible, permettant de garantir la mise à jour régulière des données.