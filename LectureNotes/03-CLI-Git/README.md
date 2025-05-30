
## 1. TeX

TeX is a typesetting system.  It's quite helpful for scientific documents as it simplifies the process of writing equations and compiling your bibliography.

I recommend using [Overleaf](https://overleaf.com) for anyone who has not used LaTeX before. It's free, on the cloud, and will compile your documents in real time. Plus, it has a great built-in help site.

If you're interested in installing TeX on your laptop or computer, you can download the following software programs:
* Unix/Linux: [TeX Live](https://www.tug.org/texlive/)
* Mac: [MacTex](https://www.tug.org/mactex/) plus [TeXShop](http://pages.uoregon.edu/koch/texshop/) frontend
* Windows: [MikTeX](https://www.miktex.org) (comes with TeXLive frontend) 
* Windows: [proTeXt](https://www.tug.org/protext/) (comes with [TeXStudio](\href{)http://texstudio.sourceforge.net) frontend)

To get started using TeX, you might look at the [LaTeX tutorial PDF chapter](https://github.com/OpenSourceMacro/BootCamp2017/blob/master/Tutorials/LaTeX/LaTeX_tutorial.pdf) in the [`/Tutorials/LaTeX/`](https://github.com/OpenSourceMacro/BootCamp2017/tree/master/Tutorials/LaTeX) directory of the Open Source Macro Bootcamp repository (which I am borrowing from, and which was written by Rick Evans at UChicago).  This provides a great reference for installing and running LaTeX. Also included in that directory is a template [`LaTeX_probset_template.tex`](https://github.com/OpenSourceMacro/BootCamp2017/blob/master/Tutorials/LaTeX/LaTeX_probset_template.tex) as well as the PDf file [(`LaTeX_probset_template.pdf`)](https://github.com/OpenSourceMacro/BootCamp2017/blob/master/Tutorials/LaTeX/LaTeX_probset_template.pdf) generated by compiling that `.tex` file.  You won't structure a document exactly like this template, but it will help you get started.


## 2. Text editor suggestions

In our recommended development workflow, you will write scripts in a text editor. Then you will run those scripts from your terminal (or the terminal on OSCER). You will want a capable text editor for developing your code. Many capable text editors exist, but I recommend any of the following:

1. [Notepad++](https://notepad-plus-plus.org/) (for Windows users only)
2. [Atom](https://atom.io)
3. [Sublime Text 3](https://www.sublimetext.com)
4. [Vim](https://www.vim.org/) (**Not** for beginners---comes built-in to Linux distributions)

Notepad++, Atom, and Vim are all completely free. A trial version of Sublime Text 3 is available for free, but a licensed version is $70 (US dollars). In the following subsections, I provide some of the details of each of these text editors.

### 2.1 Notepad++
[Notepad++](https://notepad-plus-plus.org/) is an open source text editor developed for Windows users. It is the one that I "grew up" on. It has many nice features, including a souped-up "find and replace" as well as plugins that will align your code for you, easily format characters (e.g. converting lower case to upper case), and much more.


### 2.2. Atom

[Atom](https://atom.io) is an open source text editor developed by people at GitHub.com. This editor has all the features of Sublime Text 3, but it also allows users full customizability. Further, it has been a while now that the users of Atom have surpassed the critical mass necessary to keep the editor progressing with the most cutting edge additions.

There are several packages you'll want to install with Atom.  Once Atom is installed, you can add packages by navigating Atom->Preferences->Install and then typing in the name of the package you would like to install.

For work with Python, I recommend the following packages be installed:

* MagicPython
* python-indent
* tabs-to-spaces
* minimap
* open-recent
* linter-python-pep8

For development with GitHub I recommend:

* merge-conflict

If using LaTex in this editor, the following packages are helpful:

* atom-latex
* latextools
* autocomplete-bitex
* dictionary
* latexer
* pdf-view

In addition, you will also want to download the [Skim](http://skim-app.sourceforge.net) PDF viewer to aid in displaying PDF files compiled from TeX with Atom.

### 2.3 Sublime Text 3

[Sublime Text 3](https://www.sublimetext.com) is the most widely used and versatile private software text editor. It has tremendous flexibility, as well as the polish of a piece of professional software. Sublime Text 3 will cost $70 for a license, although you can use a trial version indefinitely without charge while only having to suffer through frequent reminders to buy the full version.

### 2.4 Vim
[Vim](https://www.vim.org/) is a text editor developed for users of Linux, and mainly optimized so that the user never has to touch the mouse to navigate. It is difficult to learn, but very powerful. When properly set up, it can do everything any other text editor can do.

## 3. Working in the Command Line

It's helpful to know your way around the Unix/DOS command line.  This is the way I recommend interacting with Git (discussed below) and is also how I typically run R, Stata, Julia, or Python scripts.  It's also the only way you can typically interact with remote servers on which you might store data or run software (such as the [OSCER](http://www.ou.edu/oscer.html) computing cluster on campus).

* [Linux commands for beginners](https://diyhacking.com/linux-commands-for-beginners/)
* [Linux file tree](http://linuxcommand.org/lc3_lts0020.php)
* [Linux command line cheat sheet](https://files.fosswire.com/2007/08/fwunixref.pdf)

Some of the most common commands you'll use are summarized in the table below.

| Command                                              | Unix                                                                                                         | DOS                                                                                                                              |
|------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
| Change directory                                     | `cd <directory path>` (could be relative path)                                                                 | `cd `                                                                                                                              |
| List files in directory                              | `ls  `                                                                                                         | `dir`                                                                                                                              |
| Move up one level in directory structure             | `cd .. `                                                                                                       | `cd ..`                                                                                                                            |
| Create new directory                                 | `mkdir`                                                                                                        | `md`                                                                                                                              |
| Create new file                                      | `touch filename`                                                                                               | `copy con filename`                                                                                                               |
| List current processes                               | `ps`                                                                                                           | `tasklist`                                                                                                                         |
| Kill a running process                               | `kill <process id>`                                                                                            | `Taskkill /PID <process id> /F  `                                                                                                  |
| Connect to remote machine via secure shell           | `ssh -p <port number> <user@hostname>`                                                                         | `<path to PuTTY.exe> -ssh <username@host> <port number>  `                                                                         |
| Transfer files to a remote machine (via Secure Copy) | `scp [options] <username1@source_host:directory1/filename1> <username2@destination_host:directory2/filename2>` | `pscp -scp [options] <username1@source_host:directory1/filename1> <username2@destination_host:directory2/filename2>`              |
| Submit a batch script                                | `srun <filename.sh>`                                                                                           | unlikely to do this. If need to, see [here](https://stackoverflow.com/questions/26522789/how-to-run-sh-on-windows-command-prompt) |

Note: the hostname for OSCER is `schooner.oscer.ou.edu`, so your ssh syntax would be: `ssh username@schooner.oscer.ou.edu`.

## 4. Accessing remote servers
Many times when performing intensive computational tasks, you will exceed the computing power of your laptop or desktop and will instead need to complete the tasks on a High Performance Computing cluster (HPC cluster), such as OSCER. To access the cluster, you need a way to interface with the remote server. You may also need a way to transfer data or scripts to the remote server. All HPC clusters use Linux as their operating system.

### 4.1 SSH
The way to interface with the remote server (via the Linux command line) is via Secure Shell (commonly called SSH). You download an SSH client to your computer, provide it the IP address and login credentials for your account on the HPC cluster, and then you can log in via an internet connection. (In some cases, you may need to log in via a Virtual Private Network (VPN) for security reasons.) The following are SSH clients for different OSes.

* Windows: I recommend using [PuTTY](http://www.putty.org/)
* Mac OS: SSH is built in via the Terminal (This is because Mac OS is built on Unix)
* Linux: SSH is built in via the Terminal

### 4.2 SFTP
While you can easily access the command line of a remote server via any SSH client, you may not easily be able to transfer files between your local machine and the remote server. The `scp` command can do this from the command line, but in many cases it's easier to do so interactively via a Graphical User Interface (GUI). The following are programs that can "drag-and-drop" files from your machine to the remote server.

* [FileZilla](https://filezilla-project.org) (available for Windows or Mac OS)
* [CyberDuck](https://cyberduck.io) (also available for Windows or Mac OS)
* [WinSCP](https://winscp.net/eng/download.php) (only available for Windows) 

## 5. Git and GitHub tutorial

I have included a tutorial on using [Git and GitHub.com](https://raw.githack.com/tyleransom/DScourseS20/master/Productivity/git_tutorial.pdf) (reproduced with permission from [Rick Evans](https://github.com/rickecon) at Rice U). Git is a powerful version control software that comes natively installed on many machines and is widely used. GitHub.com is the most widely used online platform for hosting open source projects and integrating with Git software. Git has a significant learning curve, but it is essential for large collaborations that involve software development.

### Git Humor from [xkcd](https://xkcd.com)

* [Git](https://xkcd.com/1597/)
* [Git Commit](https://xkcd.com/1296/)

| Functionality                                               | Git Command                                                      |
|-------------------------------------------------------------|------------------------------------------------------------------|
| See active branch and uncommitted changes for tracked files | `git status -uno`                                                  |
| Change branch                                               | `git checkout <branch name>`                                       |
| Create new branch and change to it                          | `git checkout -b <new branch name>`                                |
| Track file or latest changes to file                        | `git add <filename>`                                               |
| Commit changes to branch                                    | `git commit -m "message describing changes" `                      |
| Push committed changes to remote branch                     | `git push origin <branch name>`                                |
| Merge changes from master into development branch           | `(change working branch to master, then…) git merge <branch name>` |
| Merge changes from development branch into master           | (change to development branch, then…) `git merge master`           |
| List current tags                                           | `git tag`                                                          |
| Create a new tag                                            | `git tag -a v<version number> -m "message with new tag"`           |
| Pull changes from remote repo onto local machine            | `git fetch upstream`                                               |
| Merge changes from remote into active local branch          | `git merge upstream/<branch name>`                                 |
| Clone a remote repository                                   | `git clone <url to remote repo>`                                  |


## 6. Instructions for installing R, Julia, the Anaconda distribution of Python, and SQL

We will be using a variety of open-source scientific computing programming languages in the course. You should either install all of these on your personal machine, or you should commit to doing all of your work remotely on OSCER. Using open source languageis such as these has the advantage of being free and accessible for anyone who wishes to contribute to your project. Being open source also allows users of the language to go into the source code of any function to modify it to suit their needs.

### 6.1 R
Download and install [RStudio](https://www.rstudio.com) if you haven't already. I recommend also installing the [tidyverse](https://www.tidyverse.org), which is a collection of packages for data science.

### 6.2 Julia
[Julia](https://julialang.org) is a relatively new (<10 years old) programming language which seeks to combine the best elements of all previously invented programming languages (see [here](https://www.infoworld.com/article/3241107/python/julia-vs-python-julia-language-rises-for-data-sciene.html)). It aims to be as fast as C, as intuitive with mathematical notation as Matlab, as usable for generally programming as Python, and as easy for statistics as R. It is starting to disrupt the data science duopoly that R and Python currently hold.

### 6.3 Python
The [Python](https://www.python.org/) programming language and many of its powerful libraries are useful for writing the code to solve and estimate economic models. 
I recommend that you download the Anaconda distribution of Python provided by [Continuum Analytics](https://www.continuum.io/). I recommend the most recent stable version of Python, which is currently Python 3.6. This can be done from the [Anaconda download page](https://www.continuum.io/downloads) for Windows, Mac OSX, and Linux machines. The code we will be writing uses common Python libraries such as `NumPy`, `SciPy`, `pickle`, `os`, `matplotlib`, and `time`.

#### Julia tutorial
A brief tutorial on Julia syntax is available [here](https://github.com/jmxpearson/duke-julia-ssri/blob/master/JuliaBasicsExample.jl).

#### Python tutorial
TBA

### 6.4 SQL
We will also be using SQL (SQLite3) in this course. This is already intalled on OSCER, but you can also install it on your own machine [here](http://www.sqlite.org/download.html). Note: This comes pre-installed on Mac OS and Linux.

## 7. PEP 8, docstring commenting, and module structure

Computer code executes some set of commands in an organized way. In every case, there are often many ways to execute a set of instructions--some ways more efficient than others. However, code has at least three functions.

1. Efficiently execute the task at hand.
2. Be accessible and usable to other programmers.
3. Be scalable and integrable with other projects and procedures.

Bill Gates is credited with the following plea for efficiency and parsimony in code writing.

> "Measuring programming progress by lines of code is like measuring aircraft building progress by weight."

Strong support for points (2) and (3) is Eagleson's Law.

> "Any code of your own that you haven't looked at for six or more months might as well have been written by someone else."

Because of the latter two characteristics, Python code has developed some conventions and best practices, some of which have been institutionalized in the [PEP 8--Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/) ("PEP" stands for Python Enhancement Proposals). Key examples PEP 8 Python coding conventions are the following.

* Indents should be 4 spaces (not tab)
* Limit all lines to a maximum of 79 characters (long blocks of text being limited to 72 characters)
* Use a space after a comma
* Use a space before and after arithmetic operators

While PEP 8 is the convention for Python, many other languages have similar conventions. 

In the text editors Atom and Sublime Text 3 you can install Linter packages that highlight areas of your code that break PEP 8 rules and tell you what the violation is. I don't believe Notepad++ or Vim have these capabilities.


## 8. Useful Links

* [Code and Data for the Social Sciences](http://web.stanford.edu/~gentzkow/research/CodeAndData.pdf)
* [LaTeX math symbols](http://web.ift.uib.no/Teori/KURS/WRK/TeX/symALL.html)
* [Typesetting equations in TeX](http://moser-isi.ethz.ch/docs/typeset_equations.pdf)
* [Pimp my Editor](http://slides.com/nicklang/pimp-my-editor#/) (Sublime Text focused, but may similar plug-ins/features available in Npp, Atom, or Vim)
* [Unix commands](https://files.fosswire.com/2007/08/fwunixref.pdf)
* [DOS commands](https://en.wikipedia.org/wiki/List_of_DOS_commands)
* [Git Basics](https://www.youtube.com/watch?v=U8GBXvdmHT4)
* [Git Workflows](http://blog.endpoint.com/2014/05/git-workflows-that-work.html)
* [OU Supercomputing Center for Education & Research (OSCER)](http://www.ou.edu/oscer.html)

