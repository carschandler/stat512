---
title: "HW1"
author: "Robert Chandler"
email: "chandl71@purdue.edu"
date: "2024-06-16"
output:
  pdf_document: default
  html_document: default
---

# Setup
Begin by reading the dataset for this set of problems:

```r
le <- read.csv("./life_expectancy.csv")
```


```r
x <- le$Nurses
y <- le$X2015Life.expectancy
```

# Problem 2
For a two-sided hypothesis test on the significance of the linear correlation coefficient between $X$ and $Y$, $H_0: \rho = 0, H_a: \rho \ne 0$...

## 2.a
If a T-test is used, the test statistic is computed with the sample correlation, $r$, with the formula


$$
t^{*} = \frac{r \sqrt{ n-2 }}{\sqrt{ 1 - r^{2} }}
$$

which is computed as


```r
r <- cor(x, y)
n <- length(x)
t_star <- r * sqrt(n - 2) / sqrt(1 - r^2)
```

$$
t^{*} = \frac{0.6612558 \sqrt{ 178-2 }}{\sqrt{ 1 - 0.6612558^{2} }}
= 11.69423
$$

