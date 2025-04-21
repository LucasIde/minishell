# 🐚 minishell

`minishell` est une implémentation d’un mini-shell Unix en C, développée dans le cadre du cursus 42. Ce projet vise à recréer un comportement proche de **bash**, avec la gestion des commandes, des pipes, des redirections, des variables d’environnement, et des builtins.

---

## 🛠 Fonctionnalités

### ✅ Obligatoires
- Affichage d’un **prompt** en attente de commande
- Exécution de commandes via `PATH` ou chemin relatif/absolu
- Gestion des **builtins** :
  - `echo` (avec option `-n`)
  - `cd` (chemin relatif ou absolu)
  - `pwd`
  - `export`
  - `unset`
  - `env`
  - `exit`
- Gestion du séparateur `;`
- Gestion des quotes simples `'` et doubles `"` (pas en multiline)
- Redirections : `<`, `>`, `>>`
- **Pipes** `|`
- Variables d’environnement (`$VAR`, `$?`)
- Gestion des signaux : `ctrl-C`, `ctrl-D`, `ctrl-\`

---

## 🧰 Instructions de compilation

Le projet utilise un `Makefile` conforme aux règles 42. Pour compiler :

```bash
make
```
afin de le rendre plus portable un dockerfile est présent pour lancer le projet via docker il suffit d'éxecuter les commandes suivantes pour lancer le projet:
```
docker compose up -d --build
docker compose exec minishell bash
./minishell
```

## 🌟 Fonctionnalités bonus

> ⚠️ Les bonus ne sont pris en compte que si la partie obligatoire est parfaitement fonctionnelle.

Fonctionnalités supplémentaires implémentées :

### 🔁 Redirections supplémentaires

- ✅ **Heredoc (`<<`)** : Support de la redirection ici-document pour fournir de l'entrée directement depuis le terminal, comme dans bash.

### 🧠 Historique et édition de ligne avec Termcaps

- 🔼🔽 **Flèches haut/bas** pour naviguer dans l’historique des commandes précédentes.
- ⌨️ **Ctrl + ← / Ctrl + →** pour naviguer mot par mot à gauche et à droite.
- 🏠 **Home / End** pour aller directement au début ou à la fin de la ligne.
- ✏️ Possibilité d’éditer une commande précédente directement depuis l’historique.

---

## 🧪 Contraintes techniques

- Respect strict de la norme 42 (Norme C)
- Aucun crash toléré (segfault, double free, etc.)
- Aucune fuite mémoire (valgrind doit être clean)
- Compilation avec les flags : `-Wall -Wextra -Werror`
- Le Makefile doit contenir les règles : `all`, `clean`, `fclean`, `re`, `bonus`
- Le projet n'utilise que les fonctions autorisées :
  - `malloc`, `free`, `write`, `open`, `read`, `close`, `fork`, `wait`, `waitpid`, `wait3`, `wait4`, `signal`, `kill`, `exit`, `getcwd`, `chdir`, `stat`, `lstat`, `fstat`, `execve`, `dup`, `dup2`, `pipe`, `opendir`, `readdir`, `closedir`, `strerror`, `errno`

## 👥 Auteurs

> Ce projet a été réalisé dans le cadre de l'école 42.

- 👤 **Lucas Ide** – [@Github Profile](https://github.com/LucasIde)
- 👤 **Simon Doneux** – [@Github Profile](https://github.com/doneuxsimon)

---
