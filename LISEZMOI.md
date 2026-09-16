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
| `run-tests.sh` | Compile et lance les tests (Linux / macOS). |
| `run-tests.bat` | Compile et lance les tests (Windows). |
| `tdd-backlog-mud.code-workspace` | À ouvrir dans VSCode pour que JUnit soit reconnu. |

Le dépôt ne contient pas de code : vous allez tout écrire, en commençant par
les tests.

## Lancer les tests

Linux / macOS :

    ./run-tests.sh

Windows :

    run-tests.bat

Le script compile **tous** les fichiers `.java` du dossier, puis lance toutes
les classes de test (celles dont le nom se termine par `Test`). Pour n'en
lancer qu'une :

    ./run-tests.sh BoxTest

## Ce qui se passe sous le capot

Le script fait exactement deux commandes :

    javac -cp .:junit-platform-console-standalone-6.1.3.jar *.java
    java -jar junit-platform-console-standalone-6.1.3.jar execute --class-path . --scan-class-path

L'énoncé vous les fait d'abord taper à la main : utilisez le script une fois
que vous les avez comprises.
