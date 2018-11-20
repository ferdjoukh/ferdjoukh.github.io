# [software] grimm v5.0 is here

<img src="img/software.png" alt="News" class="full-img"/>

We are proud to announce that our model generation tool has a new release, grimm v5.0 !

You can download this new version [here](https://github.com/ferdjoukh/grimm/releases/tag/v5.0-d20112018). 

## New features

- Adding random diversity when assigning values for attributes of type: EEnum, EInt, EBoolean and EString.
- EString attributes have 2 default configuration modes:
	- **name** is applied for name attributes. Each attribute is named following his class and EObject ID (eg. Method4).
	- **random** is applied for other attributes. A random string is generated (3 to 10 alphabetic symbols).
- Allow the users to give custom domains for EInt and EString by using a configuration file (.grimm)	
	- For **EInt** attributes, users can give either an interval (25..30) or a list of values (-1 0 1). This is useful for example in UML meta-model to set up the lower and upper bound of an Association.
	- For **EString** attributes, users can give a list of values. It is interesting to get more customisable models.
- Variables that represent attributes in CSP are removed. Instantiation is done as a post-processing (after the CSP solver).
- Default interval for EInt attributes us set to 1..100 (can be changes by using a config file).
	
## Corrected bugs

- Corrected bug: Attribute types are printed in config files as a reminder.
- Corrected bug: A generated pre-filled config file is now consistent and can be used to generate an empty model.
- Corrected bug: Boolean and EEnum attribute are removed from config files.	
- Corrected bug: created config files are stored in the folder chosen by the user and not in *rootClass* folder.
- Corrected bug: problem of instantiation for 0..* references when reference UB is set to 1.

## Documentation

Using grimm is easy ! 5 minutes to read the [documentation](https://github.com/ferdjoukh/grimm/blob/master/README.md) and then go !

<br/>
<br/>
<br/>