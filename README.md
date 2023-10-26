[![License](https://img.shields.io/github/license/OpenSmock/Molecule-Geographical-Position-Example.svg)](./LICENSE)

# Molecule Geographical Position Example

Molecule Geographical Position Example is a repository showcasing one graphical example of using [Molecule](https://github.com/OpenSmock/Molecule). The goal is to have a short and simple application that can be emulated in your existing work.

The application contains a component that connects to a positioning system hardware (GPS, GSM, WiFi, Galileo) and displays the data on a view map. The running application can switch between multiple positioning hardware.

## Getting Started

This section detail how to install the project from scratch.

### Get Pharo 11

Download and install the [Pharo Launcher](https://pharo.org/download) for your operating system (Windows, GNU/Linux or MacOs). The Pharo launcher help to download and install Pharo images and virtual machines, some documentation [here](https://pharo-project.github.io/pharo-launcher/installation/).

Open the Pharo Launcher and create a new image:

**image pharo launcher Bouton "new"**

In the official distribution list, select Pharo 11 (choose 32 or 64bits depending on your system):

**image pharo launcher image creation**

Depending on when you install Pharo 11, you may find it in the Deprecated distributions section.

Select the newly created image in the list then click "start":

**image pharo launcher Bouton "play"**

### Installation

In the pharo environment, left click on the environment background, and select Browse > Playground in the menu:

**image pharo menu > browse > playground**

To install the project on your Pharo image you can just copy and paste the following script in the playground and click on `Do it`:

```smalltalk
Metacello new
   baseline: 'MoleculeGeographicalPositionExample';
   repository: 'github://OpenSmock/Molecule-Geographical-Position-Example:main/src';
   load.
```

**image playground avec le script + bouton "Do it"**

## Dependencies

TODO

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

This project uses images from Freepik Company, S.L. and OpenStreetMap® - see the [LICENSE](LICENSE) file for details.
