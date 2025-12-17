# US-City-Population-Climate-Analysis Final Project

This repository contains the data and R script necessary to replicate the findings from the final project of the social statistics course. The analysis investigates the difference in population size between US major cities that have a continental climate compared to those that have a temperate climate.

## Instructions for Access and Utilization

To access and utilize the package:
1.  Clone or download this repository.
2.  Open the `khana28-final_project.R` file (or the similar named script) in an R environment (e.g., RStudio).
3.  Ensure the `data.csv` file is in the same directory as the script, and the working directory is set correctly within the script.
4.  Run the script to reproduce the data cleaning, descriptive statistics, and inferential statistical analysis.

## Data and Methods (Replication of Data Section)

### Data
The data used for this analysis was compiled from the provided dataset containing statistics for major US cities. The research question addresses whether there is a statistically significant difference in the population size of major US cities that have a continental climate compared to those that have a temperate climate.

The **unit of analysis** is one major US city. The total number of observations collected is $N=120$. The type of sampling strategy used is **convenience sampling**, as the dataset represents a pre-selected group of cities.

### Operationalization

#### Dependent Variable: Population

The concept of a city's **Population** is defined as the total number of residents in the city. This is operationalized through a **quantitative variable** named `population`, measured on a **ratio scale** in numerical count of residents. The variable ranges from a minimum of $107$ to a maximum of $20,739,475$, with a mean of $5,220,380$ and a standard deviation ($SD$) of $8,847,493$.

#### Independent Variable: Climate Type (Continental vs. Temperate)

The concept of **Climate Type** is defined by the climate classification of the city. This is operationalized through a **qualitative, nominal variable** named `climate`. This variable is subset into two distinct groups for the bivariate analysis:
1.  **Continental Climate:** Cities classified as having a continental climate (Code 1 in the raw data). The proportion in the dataset is $0.27$.
2.  **Temperate Climate:** Cities classified as having a temperate climate (Code 5 in the raw data). The proportion in the dataset is $0.18$.

The analysis compares the mean population of the two groups using an independent samples $t$-test or one-way ANOVA.
