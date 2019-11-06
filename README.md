# UFPEL2019


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

### Contents

- Lecture 1: Structuring data and structuring data analyses.
- Lecture 2: Topics in reproducibility and introduciton to R
- Lecture 3: Data cleaning 1: Processing raw data, approximate matching, data validation.
- Lecture 4: Data cleaning 2: Error localization, imputation, monitoring data processes 

Lectures 2, 3, and 4 will have a hands-on component so make sure you bring a
laptop with the necessary software installed (see prerequisites below). 



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

#### 3. Install R packages

R packages are standardized extensions to R that offer extra functionality.

1. Open RStudio
2. In the console, copy the following command and press `<ENTER>`

```r
install.packages(c("stringdist","validate","simputation"),dependencies=TRUE)
```

----
## License

[![Creative Commons License](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)

This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by-nc/4.0/).

