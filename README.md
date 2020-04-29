# Dotfiles

<p align="center">
  <a href="https://github.com/asrmarco13/dotfiles/blob/master/LICENSE"><img alt="License: GPL3" src="https://img.shields.io/github/license/asrmarco13/dotfiles"></a>
  <a href="https://github.com/asrmarco13/dotfiles"><img alt="Latest commit" src="https://img.shields.io/github/last-commit/asrmarco13/dotfiles/master"></a>
  <a href="https://github.com/asrmarco13/dotfiles/issues"><img alt="Open Issues" src="https://img.shields.io/github/issues/asrmarco13/dotfiles"></a>
  <a href="https://github.com/asrmarco13/dotfiles"><img alt="Stars" src="https://img.shields.io/github/stars/asrmarco13/dotfiles?style=social"></a>
  <a href="https://github.com/asrmarco13/dotfiles"><img alt="Watchers" src="https://img.shields.io/github/watchers/asrmarco13/dotfiles?style=social"></a>
<p>

## **Indice**
1. [Introduzione](#introduzione)
2. [Cosa è VIM](#cosa-è-vim)
3. [Lista plugin](#lista-plugin)
4. [Automatizzare la creazione e gestione dei dotfiles](#automatizzare-la-creazione-e-gestione-dei-dotfiles)
5. [Configurare VIM](#configurare-vim)
6. [Cosa è ZSH](#cosa-è-zsh)
7. [FAQ](#faq)
8. [Conclusione](#conclusione)

### Introduzione

I dotfiles sono usati per personalizzare il nostro sistema operativo, in pratica essi contengono i setup preferiti del nostro computer o dei nostri applicativi che possiamo utilizzare più volte su una o più macchine diverse. Il nome deriva dai file di configurazione nei sistemi Unix-like che iniziano con un punto (es. il file di configurazione di git chiamato " **.gitconfig** "). Questo repository configura VIM e ZSH con tutti i plugin usati da me in ambiente Ubuntu Desktop, Server e Arch Linux.

### Cosa è VIM

**VIM** (Vi Improved) nasce per fornire una versione migliorata del famoso editor di testo VI. È [open source e multipiattaforma](https://www.vim.org/).

A partire dalla versione 6 sono state introdotte una serie di funzionalità che vanno dai plugin al controllo della sintassi e l'auto completamento per i maggiori linguaggi di programmazione. VIM è diventato con gli anni un vero e proprio tool di sviluppo ed è uno dei più usati al mondo dagli [sviluppatori](https://insights.stackoverflow.com/survey/2019#technology-_-most-popular-development-environments).

### Lista plugin

Di seguito la lista dei plugin da me usati che vanno dalla possibilità di esplorare il file system a scrivere applicativi in Python, dall'indentare correttamente il codice a secondo del tipo di file (JSON, XML, Dockerfile ed altri) o autocompletare il codice come un qualsiasi IDE e così via.

- [VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive.git)
- [preservim/nerdtree](https://github.com/preservim/nerdtree)
- [preservim/nerdcommenter](https://github.com/preservim/nerdcommenter)
- [vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic)
- [valloric/youcompleteme](https://vimawesome.com/plugin/youcompleteme)
- [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
- [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim)
- [tpope/vim-surround](https://github.com/tpope/vim-surround.git)
- [godlygeek/tabular](https://github.com/godlygeek/tabular.git)
- [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown.git)
- [ekalinin/dockerfile.vim](https://github.com/ekalinin/Dockerfile.vim.git)
- [elzr/vim-json](https://github.com/elzr/vim-json.git)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline.git)
- [Xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)

### Automatizzare la creazione e gestione dei dotfiles

Per creare in maniera semplice dei dotfiles ho usato un software chiamato [chezmoi](https://github.com/twpayne/chezmoi) scritto in Go.

### Configurare VIM

Installare chezmoi.

Per Ubuntu 16.04 LTS in poi:

`snap install chezmoi --classic`

Per Arch Linux:

`pacman -S chezmoi`

Creare le directory chezmoi sotto .local/share. Se non esiste nulla creare tutte le cartelle necessarie:

`mkdir -p ~/.local/share/chezmoi`

Clonare il repository:

`git clone https://github.com/asrmarco13/dotfiles ~/.local/share/chezmoi`

Andare all'interno del repository:

`cd ~/.local/share/chezmoi`

Inizializzare il repository:

`chezmoi init`

Applicare le configurazioni:

`chezmoi apply`

### Cosa è ZSH

**ZSH** è una shell che può essere utilizzata come linea di comando interattiva e come un potente interprete per script di shell.

Zsh può essere vista come un'estensione della Bourne shell dotata di numerose migliorie, fra le quali alcune caratteristiche mutuate da **bash**, **ksh** e **Tcsh**.

Funzionalità:
- Autocompletamento programmabile che aiuta l'utente ad inserire sia le opzioni che gli argomenti per la maggior parte dei comandi più utilizzati, con supporto pre-attivato per svariate centinaia di comandi
- Condivisione della cronologia dei comandi fra tutte le shell attive
- Funzionalità estesa di globbing che consente di specificare i nomi file senza la necessità di utilizzare un programma esterno quale find
- Manipolazione avanzata di variabili/array
- Modifica di comandi multi-linea in un singolo buffer
- Controllo ortografico
- Varie modalità di compatibilità, ad esempio zsh può emulare il comportamento di una Bourne shell quando eseguita come /bin/sh
- Temi per i prompt, compresa l'abilità di posizionare parti del prompt sul lato destro dello schermo e di nasconderle automaticamente quando si sta inserendo un comando lungo
- Moduli caricabili, che provvedono, fra le altre cose, a fornire: interfaccia TCP completa, controlli per Socket di dominio locale, un client FTP e funzionalità matematiche estese
- Completamente personalizzabile

### FAQ

**Dove posso trovare altri plugin da installare per la mia configurazione?**

[VIM Awesome](https://vimawesome.com/)

**Idee, problemi o bug?**

Aprite una segnalazione.

### Conclusione

Alcuni plugin non sono più supportati e appena possibile li sostituirò. Attivate le notifiche sul progetto cliccando su **watch**.

Se l'idea vi è piaciuta lasciate un like e forkate il progetto :beers:
