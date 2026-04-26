# Dotfiles

Meine persönlichen Konfigurationsdateien, verwaltet mit [GNU Stow](https://www.gnu.org/software/stow/) unter macOS.

## Voraussetzungen

```bash
brew install stow
```

## Installation

```bash
cd ~
git clone https://github.com/imago/dotfiles.git .dotfiles
cd .dotfiles
```

## Konfigurationen aktivieren

### Einzelne Pakete
```bash
stow zsh
stow git
```

### Alles (optional)
```bash
stow .
```

##  Struktur
Die Ordnerstruktur spiegelt den Zielpfad relativ zu ~ wider:

```txt
.dotfiles/
├── git/                # Symlinks nach ~
│   └── .gitconfig
└── zsh/
    └── .zshrc
```

##  Wichtige Befehle

| Aktion             | Befehl            |
| ------------------ | ----------------- |
| Paket aktivieren   | stow <name>       |
| Paket entfernen    | stow -D <name>    |
| Neu verlinken      | stow -R <name>    |
| Testlauf (dry-run) | stow -n -v <name> |


## Skills

Der Ordner `skills/` enthält Skill-Instruktionsdateien (`SKILL.md`) für den persönlichen Einsatz in Projekten.

| Datei / Ordner                        | Zweck                                                        |
| ------------------------------------- | ------------------------------------------------------------ |
| `.github/skills/todo/SKILL.md`        | Aufgabenverwaltung nach der Eisenhower-Methode (`~/todo.md`) |

### Skills in ein Projekt einbinden

```bash
cd ~/.dotfiles
stow --target ~/workspace/my-project skills
```

Damit werden die `SKILL.md`-Dateien per Symlink in das Zielverzeichnis eingebunden und stehen dem Copilot-Agenten im jeweiligen Projekt zur Verfügung:

- `~/workspace/my-project/.github/skills/todo/SKILL.md` → Todo-Skill

## ⚠️ Fehlerbehebung
Wenn Zieldateien bereits existieren (z. B. ~/.zshrc), verschiebe oder lösche sie und führe Stow erneut aus:

```bash
mv ~/.zshrc ~/.zshrc.bak
stow zsh
```
