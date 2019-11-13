# UFPEL2019

Materials for lectures given during my visit to [Universidade Federal de Pelotas](http://portal.ufpel.edu.br/).


### An Introduction to Data Management and Data Cleaning for Scientists


Working with data in a way that is both understandable and reproducible by
others is a core competence for research scientists. This four-part lecture
series will highlight principals, applications, and free software tools for
data management, data processing, and data cleaning in scientific environments.
Topics to be discussed include

- The many faces of information: recognizing data usage and choosing the right structure.
- Data analyses as a value chain, separating tasks in a clear way.
- Managing data in organizations and information modeling.
- Working reproducibly
- An introduction to systematic data cleaning and data validation for statistics.

The lecture series will be a mix of presentations, quizzes, and some practical
assignments. In the later lectures we will do some work with R. No prior
knowledge of R is assumed, but attendees who wish to join the assignments
should bring a laptop with R preinstalled. Instructions for this will be posted
with the lecture materials.

---

## Contents

Lectures 2, 3, and 4 will have a hands-on component so make sure you bring a
laptop with the necessary software installed (described below).


| Lecture | Content                                     | Materials |
|---------|---------------------------------------------|-----------|
| 1       | Structuring data and analyses               |[slides](https://github.com/markvanderloo/UFPEL2019/raw/master/files/01_slides.pdf)    |
| 2       | Reproducibility and introduction to R       |[slides 1](https://github.com/markvanderloo/UFPEL2019/raw/master/files/02_1_slides.pdf), [slides 2](https://github.com/markvanderloo/UFPEL2019/raw/master/files/02_2_slides.pdf), [r_intro_ufpel2019.zip](https://github.com/markvanderloo/UFPEL2019/raw/master/files/r_intro_ufpel2019.zip) |
| 3       | Data cleaning 1: raw data, data validation   |[slides 1](https://github.com/markvanderloo/UFPEL2019/raw/master/files/03_1_slides.pdf), [slides 2](https://github.com/markvanderloo/UFPEL2019/raw/master/files/03_2_slides.pdf), [slides 3](https://github.com/markvanderloo/UFPEL2019/raw/master/files/03_3_slides.pdf), [dc_ufpel2019.zip](https://github.com/markvanderloo/UFPEL2019/raw/master/files/dc_ufpel2019.zip) |
| 4       | Data cleaning 2: fixing errors, missing data |[slides 1](https://github.com/markvanderloo/UFPEL2019/raw/master/files/04_1_slides.pdf), [slides 2](https://github.com/markvanderloo/UFPEL2019/raw/master/files/04_2_slides.pdf), [slides 3](https://github.com/markvanderloo/UFPEL2019/raw/master/files/04_3_slides.pdf), [slides 4](https://github.com/markvanderloo/UFPEL2019/raw/master/files/04_4_slides.pdf), [slides 5](https://github.com/markvanderloo/UFPEL2019/raw/master/files/04_5_slides.pdf)  |



---


### Prerequisites

During some of the lectures we will do some small exercise with `R`. Here is what
you need to install on your laptop to do the exercises.


#### 1. Install R


R is a powerful free and open source language and environment for data analyses
and statistics.


Go to [cloud.r-project.org](https://cloud.r-project.org) and download
and install the R version that is suited for your operating system.


#### 2. Install RStudio

RStudio makes it easier to work with R.

Go to [rstudio.com](https://rstudio.com), click on `Download RStudio`, Choose
the Free version of RStudio Desktop, and then download and install the RStudio
version that is suited for your operating system.

#### 3. Install packages
 
Copy-paste and execute this code to install all necessary packages for the
tutorial (may take a few minutes)

```r
install.packages(c(
        "daff"
      , "errorlocate"
      , "jsonlite"
      , "lumberjack"
      , "readr"
      , "rspa"
      , "simputation"
      , "stringr"
      , "validate"
      , "XML")
  , dependencies=TRUE)
```



----
## License

[![Creative Commons License](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)

This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by-nc/4.0/).

