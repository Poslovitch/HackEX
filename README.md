# HackEx version 0.0.5-dev

This documentation file is available in the following languages: **English** and **French**.

## English

### Description

**HackEX** is an [ArmA 3](https://arma3.com/) SQF script aiming at introducing actual computers and improving the electronic warfare and hacking gameplay while granting mission-makers innovative and ready-to-use means of story-telling.

This project is developed and maintained by [Poslovitch](https://github.com/Poslovitch) with the kind support of [CORP](https://www.corp-arma.fr/), a French ArmA 3 unit focused on milsim and realism.

### Using the script in your mission...

#### Download

**HackEx** is currently only available on GitHub.
You can either [get the most recent version](https://github.com/Poslovitch/HackEX/releases/latest) or browse the [`Releases`](https://github.com/Poslovitch/HackEX/releases) tab to choose an older version.
Download the source code archive (in `.zip` or `.tar.gz` format, depending on your preference).

#### Installation

Extract the contents of the archive into your mission folder and rename the resulting folder to `HackEX`.
If you later want to check the version of your HackEX installation, you can check the first line of the `README.md` file.

Then, add the code below your mission's `description.ext` file:
```
#include "HackEX\terminal\dialog.hpp"

class CfgFunctions {
  #include "HackEX\HKX_cfgFunctions.hpp"
}
```

If your `description.ext` already contains a `CfgFunctions` class, make sure you put the preprocessor instructions in the right place.

**HackEX** is now ready for use on your mission.
It's time to create **terminals**!

#### Creating and customizing a terminal

By the method of your choice, place an object in your mission (preferably a laptop, for the sake of consistency - although **HackEX** can theoretically work with any object).
Give your object a variable name.

**/!\ For the rest of the instructions, we'll assume that the variable name of the object is `terminal`**.

Add the following line to the `init.sqf` file of your mission:
`[terminal] execVM "HackEX\hackex.sqf";`

Navigate to the `HackEX\config\terminals` directory.
A terminal configuration file, named `terminal.sqf`, is already there as an example.
Since, in our example, the variable name of our object is `terminal`, this file will be used to configure the corresponding in-game object.
In case the variable name of your object is different, create a `variablename.sqf` file and copy the contents of `terminal.sqf` into it.

The terminal configuration file allows you to define the **accounts**, **files** and **custom commands** available on the terminal.
Apart from the limits imposed by the ArmA 3 game engine, you are free to create as many accounts, files and custom commands as you wish.

#### Setting up several terminals on the same mission

The process is the same as for the first terminal.
You need to place a second object with a different variable name than the first, and then follow the instructions in the previous section.

## French / Français

### Description

**HackEX** est un script SQF [ArmA 3](https://arma3.com/) qui vise à introduire de véritables ordinateurs et à améliorer le gameplay de guerre électronique et de piratage tout en offrant aux réalisateurs de missions des moyens innovants et prêts à l'emploi pour raconter leurs histoires.

Ce projet est développé et maintenu par [Poslovitch](https://github.com/Poslovitch) avec l'aimable soutien de la [CORP](https://www.corp-arma.fr/), une unité ArmA 3 française axée sur le milsim et le réalisme.

### Utiliser le script dans votre mission...

#### Téléchargement

**HackEx** n'est pour le moment disponible que sur GitHub.
Vous pouvez soit [obtenir la version la plus récente](https://github.com/Poslovitch/HackEX/releases/latest), soit naviguer dans l'onglet [`Releases`](https://github.com/Poslovitch/HackEX/releases) pour choisir une version plus ancienne.
Téléchargez l'archive du code source (en `.zip` ou en `.tar.gz`, selon vos préférences).

#### Installation

Extrayez le contenu de l'archive dans votre dossier de mission puis renommez le dossier ainsi créé en `HackEX`.
Si, par la suite, vous voulez vérifier la version de votre installation de HackEX, il vous suffira de consulter la première ligne du fichier `README.md`.

Ensuite, ajoutez le code ci-dessous au fichier `description.ext` de votre mission :
```
#include "HackEX\terminal\dialog.hpp"

class CfgFunctions {
  #include "HackEX\HKX_cfgFunctions.hpp"
}
```

Si votre `description.ext` contient déjà une classe `CfgFunctions`, assurez-vous de placer les instructions préprocesseur au bon endroit.

**HackEX** est maintenant prêt à l'emploi sur votre mission.
Il est temps de créer des **terminaux** !

#### Création et personnalisation d'un terminal

Par la méthode de votre choix, placez un objet dans votre mission (de préférence un ordinateur portable, par soucis de cohérence - bien que **HackEX** puisse théoriquement fonctionner avec n'importe quel objet).
Donnez un nom de variable à votre objet.

**/!\ Pour la suite des instructions, nous supposerons que le nom de variable de l'objet est `terminal`**.

Ajoutez la ligne suivante au fichier `init.sqf` de votre mission :
`[terminal] execVM "HackEX\hackex.sqf";`

Naviguez dans le dossier `HackEX\config\terminals`.
Un fichier de configuration de terminal, nommé `terminal.sqf`, est déjà présent en guise d'exemple.
Puisque, dans notre exemple, le nom de variable de notre objet est `terminal`, ce fichier sera employé pour configurer l'objet correspondant en jeu.
Dans le cas où le nom de variable de votre objet serait différent, créez un fichier `nomdevariable.sqf` et copiez le contenu de `terminal.sqf` à l'intérieur.

Le fichier de configuration de terminal vous permet de définir les **comptes**, **fichiers** et **commandes personnalisées** disponibles sur le terminal.
Hormis les limites imposées par le moteur de jeu d'ArmA 3, il vous est loisible de créer autant de comptes, fichiers et commandes personnalisées que vous le désirez.

#### Mise en place de plusieurs terminaux sur une même mission

Le procédé est le même que pour le premier terminal.
Il vous faut placer un second objet avec un nom de variable différent du premier, puis suivre les instructions de la partie précédente.
