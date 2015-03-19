# Elige tu carrera

Bayesian calculator to guess which will be your perfect career according to your aptitudes and likes.

-----

## How to install

This project uses [jsmile](https://dslpitt.org/genie/index.php/downloads) as a Bayesian reasoner. To make it work you need to follow this steps:
* Go to the folder where you downloaded `smile.jar` and install it as a local Maven dependency: 

`mvn install:install-file -Dfile=smile.jar -DgroupId=dslpitt -DartifactId=jsmile -Dversion=1.0 -Dpackaging=jar`

* Configure the native library according to the platform you're using. [+ info here](https://dslpitt.org/genie/wiki/Introduction_to_jSMILE)

## How to run

Go to the repository root folder and execute:

`mvn clean install exec:java`

If everything went OK, the application should be running at [http://localhost:8080/](http://localhost:8080/) .
