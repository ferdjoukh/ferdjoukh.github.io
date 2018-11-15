# [software] grimm v4.0 is here

<img src="img/software.png" alt="News" class="full-img"/>

We are proud to announce that our model generation tool has a new release, grimm v4.0 !

You can download this new version [here](https://github.com/ferdjoukh/grimm/releases/tag/v4.0-d15112018). 

## New features

- Add specific processing for containment references. Now it is different from classic references and not included in the produced CSP instances.
- Add support for deep containment references (>1). Now you can have containment references between two classes (not only root class).
- Add support for boolean, integer, string and enum attributes. Moreover, randomness is added while instantiating attributes.
- Diversity is added in treating EOpposite references. Now the created GCC has diverse upper bound. This makes the generated models different even when the same configuration is used.
- Adding the possibility of generating 0 instances for a given class (you can do that by using a config file).
	
## Corrected bugs

- Corrected bugs in ConfigrationFileReader class. Now the order of classes in a config file is not important.
- Corrected bug: unchangeable references and attributes are not considered any more.

## Documentation

Using grimm is easy ! 5 minutes to read the [documentation](https://github.com/ferdjoukh/grimm/blob/master/README.md) and then go !

<br/>
<br/>
<br/>