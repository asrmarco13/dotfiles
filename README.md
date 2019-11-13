# Marco Orfei VIM Dotfiles

## **Indice**
1. [Introduzione](#introduzione)
2. [Cosa è VIM](#cosa-è-vim)
3. [Lista plugin](#lista-plugin)
4. [Automatizzare la creazione e gestione dei dotfiles](#automatizzare-la-creazione-e-la-gestione-dei-dotfiles)
5. [Configurare VIM](#configurare-vim)
6. [FAQ](#faq)
7. [Conclusione](#conclusione)

### Introduzione

I dotfiles sono usati per personalizzare il nostro sistema operativo, in pratica essi contengono i setup preferiti del nostro computer o dei nostri applicativi che possiamo utilizzare più volte su una o più macchine diverse. Il nome deriva dai file di configurazione nei sistemi Unix-like che iniziano con un punto (es. il file di configurazione di git chiamato " **.gitconfig** "). Questo repository configura VIM con tutti i plugin usati da me in ambiente Ubuntu Desktop, Server e Arch Linux.

### Cosa è VIM

**VIM** (Vi Improved) nasce per fornire una versione migliorata del famoso editor di testo VI. È [open source e multipiattaforma](https://www.vim.org/).

A partire dalla versione 6 sono state introdotte una serie di funzionalità che vanno dai plugin al controllo della sintassi e l'auto completamento per i maggiori linguaggi di programmazione. VIM è diventato con gli anni un vero e proprio tool di sviluppo ed è uno dei più usati al mondo dagli [sviluppatori](https://insights.stackoverflow.com/survey/2019#technology-_-most-popular-development-environments).

### Lista plugin

Di seguito la lista dei plugin da me usati che vanno dalla possibilità di esplorare il file system a scrivere applicativi in Python, dall'indentare correttamente il codice a secondo del tipo di file (JSON, XML, Dockerfile ed altri) o autocompletare il codice come un qualsiasi IDE e così via.

- [VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive.git)
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree.git)
- [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter.git)
- [scrooloose/syntastic](https://github.com/vim-syntastic/syntastic.git)
- [valloric/youcompleteme](https://vimawesome.com/plugin/youcompleteme)
- [altercation/vim-colors-solarized]()
- [grep.vim](https://vimawesome.com/plugin/grep-vim)
- [davidhalter/jedi-vim](https://vimawesome.com/plugin/jedi-vim)
- [klen/python-mode](https://github.com/python-mode/python-mode)
- [chase/vim-ansible-yaml](https://vimawesome.com/plugin/vim-ansible-yaml)
- [tpope/vim-surround](https://github.com/tpope/vim-surround.git)
- [godlygeek/tabular](https://github.com/godlygeek/tabular.git)
- [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown.git)
- [ekalinin/dockerfile.vim](https://github.com/ekalinin/Dockerfile.vim.git)
- [elzr/vim-json](https://github.com/elzr/vim-json.git)
- [hashivim/vim-terraform](https://github.com/hashivim/vim-terraform.git)
- [juliosueiras/vim-terraform-completion](https://github.com/juliosueiras/vim-terraform-completion.git)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline.git)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish.git)

### Automatizzare la creazione e gestione dei dotfiles

Per creare in maniera semplice dei dotfiles ho usato un software chiamato [chezmoi](https://github.com/twpayne/chezmoi) scritto in Go.

### Configurare VIM

Installare chezmoi.

Per Ubuntu 16.04 LTS in poi:

`snap install chezmoi --classic`

Per Arch Linux:

`pacman -S chezmoi`

Creare le directory chezmoi sotto .local/share. Se non esiste nulla creare tutte le cartelle necessarie:

`mkdir ~/.local`

`mkdir ~/.local/share`

`mkdir ~/.local/share/chezmoi`

Clonare il repository:

`git clone https://github.com/asrmarco13/dotfiles ~/.local/share/chezmoi`

Andare all'interno del repository:

`cd ~/.local/share/chezmoi`

Inizializzare il repository:

`chezmoi init`

Applicare le configurazioni:

`chezmoi apply`

### FAQ

**Dove posso trovare altri plugin da installare per la mia configurazione?**

[VIM Awesome](https://vimawesome.com/)

**Idee, problemi o bug?**

Aprite una segnalazione.

### Conclusione

Alcuni plugin non sono più supportati e appena possibile li sostituirò. Attivate le notifiche sul progetto cliccando su **watch**.

Se l'idea vi è piaciuta lasciate un like e forkate il progetto :beers:
