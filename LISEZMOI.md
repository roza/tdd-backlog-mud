# TP4 — Un MUD en TDD

BTS2 - SLAM — Qualité de développement

L'énoncé du TP est dans ce dépôt : **`TP4.pdf`**. Lisez-le, c'est lui qui
mène la séance ; ce fichier-ci ne décrit que l'outillage.

Vous n'avez **rien à installer**, à part Java 17 ou plus récent
(vérifiez avec `java -version`).

## Contenu du dépôt

| Fichier | Rôle |
|---|---|
| `TP4.pdf` | **L'énoncé du TP.** |
| `junit-platform-console-standalone-6.1.3.jar` | JUnit 6, en un seul jar. |
| `tdd-backlog-mud.code-workspace` | À ouvrir dans VSCode pour que JUnit soit reconnu. |

Le dépôt ne contient pas de code : vous allez tout écrire, en commençant par
les tests.

## Lancer les tests

Il n'y a pas de script : c'est à vous de compiler et de lancer les tests, avec
le jar de JUnit sur le *classpath* (vu au TP3).

    J=junit-platform-console-standalone-6.1.3.jar
    javac -cp .:$J BoxTest.java
    java -jar $J execute --class-path . --scan-class-path

Sous Windows (invite de commandes), on écrit `set J=...` et le séparateur du
classpath est `;` au lieu de `:` :

    set J=junit-platform-console-standalone-6.1.3.jar
    javac -cp .;%J% BoxTest.java
    java -jar %J% execute --class-path . --scan-class-path
