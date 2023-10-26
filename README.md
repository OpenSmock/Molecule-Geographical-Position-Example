[![License](https://img.shields.io/github/license/OpenSmock/Molecule-Geographical-Position-Example.svg)](./LICENSE)

# Molecule Geographical Position Example

Molecule Geographical Position Example is a repository showcasing one graphical example of using [Molecule](https://github.com/OpenSmock/Molecule). The goal is to have a short and simple application that can be emulated in your existing work.

The application contains a component that connects to a positioning system hardware (GPS, GSM, WiFi, Galileo) and displays the data on a view map. The running application can switch between multiple positioning hardware.

## Getting Started

This section detail how to install the project from scratch.

### Get Pharo 11

Download and install the [Pharo Launcher](https://pharo.org/download) for your operating system (Windows, GNU/Linux or MacOs). The Pharo launcher help to download and install Pharo images and virtual machines, some documentation [here](https://pharo-project.github.io/pharo-launcher/installation/).

Open the Pharo Launcher and create a new image:

![Capture d'écran 2023-10-26 113038](https://github.com/OpenSmock/Molecule-Geographical-Position-Example/assets/34318678/2389dd07-ba76-467f-9870-4da800690817)

In the official distribution list, select Pharo 11 (choose 32 or 64bits depending on your system) and click on `Create image`:

![Capture d'écran 2023-10-26 113406](https://github.com/OpenSmock/Molecule-Geographical-Position-Example/assets/34318678/4a8eb11f-c2de-4e84-86f0-6e1e61a8c27d)

Depending on when you install Pharo 11, you may find it in the Deprecated distributions section.

Select the newly created image in the list then click "start":

![Capture d'écran 2023-10-26 113618](https://github.com/OpenSmock/Molecule-Geographical-Position-Example/assets/34318678/c9b4083b-711c-4c7a-861b-d86e008569ec)


### Installation

In the pharo environment, left click on the environment background, and select Browse > Playground in the menu:

![Capture d'écran 2023-10-26 113819](https://github.com/OpenSmock/Molecule-Geographical-Position-Example/assets/34318678/046fd928-2260-4f25-8fe9-782c31f3e68a)

To install the project on your Pharo image you can just copy and paste the following script in the playground and click on `Do it`:

```smalltalk
Metacello new
   baseline: 'MoleculeGeographicalPositionExample';
   repository: 'github://OpenSmock/Molecule-Geographical-Position-Example:main/src';
   load.
```

![Capture d'écran 2023-10-26 115230](https://github.com/OpenSmock/Molecule-Geographical-Position-Example/assets/34318678/b5e93e0a-6135-44c8-aac2-dc16ba178098)

It is possible that a window open asking you your author name, the name you enter is only use locally to identify the changes from the source code. Enter a name without space and click on `OK`.

![Capture d'écran 2023-10-26 115727](https://github.com/OpenSmock/Molecule-Geographical-Position-Example/assets/34318678/c8ca385a-5ea1-4385-ae20-74d5f2554fb7)

## Dependencies

TODO

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

This project uses images from Freepik Company, S.L. and OpenStreetMap® - see the [LICENSE](LICENSE) file for details.
