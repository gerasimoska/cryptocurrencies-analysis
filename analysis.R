
R version 3.5.0 (2018-04-23) -- "Joy in Playing"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> coin.df <- read.csv(paste("smallerDataSet.csv"),sep=",")
> dim(coin.df)
[1] 6329   13
> table(coin.df$slug)

bitcoin bitcoin-cash     ethereum     litecoin       ripple 
1761          214          930         1761         1663 
> aggregate(coin.df$open,by=list(coin.df$slug),min)
Group.1          x
1      bitcoin  68.500000
2 bitcoin-cash 212.180000
3     ethereum   0.431589
4     litecoin   1.150000
5       ripple   0.002809
> aggregate(coin.df$open,by=list(coin.df$slug),max)
Group.1        x
1      bitcoin 19475.80
2 bitcoin-cash  3909.00
3     ethereum  1397.48
4     litecoin   359.13
5       ripple     3.36
> aggregate(coin.df$close,by=list(coin.df$slug),min)
Group.1          x
1      bitcoin  68.430000
2 bitcoin-cash 213.150000
3     ethereum   0.434829
4     litecoin   1.160000
5       ripple   0.002810
> aggregate(coin.df$close,by=list(coin.df$slug),max)
Group.1        x
1      bitcoin 19497.40
2 bitcoin-cash  3923.07
3     ethereum  1396.42
4     litecoin   358.34
5       ripple     3.38
> table(coin.df$slug)

bitcoin bitcoin-cash     ethereum     litecoin       ripple 
1761          214          930         1761         1663 
> library(gmodels)
> CrossTable(coin.df$slug,coin.df$ranknow)


Cell Contents
|-------------------------|
  |                       N |
  | Chi-square contribution |
  |           N / Row Total |
  |           N / Col Total |
  |         N / Table Total |
  |-------------------------|
  
  
  Total Observations in Table:  6329 


| coin.df$ranknow 
coin.df$slug |         1 |         2 |         3 |         4 |         5 | Row Total | 
  -------------|-----------|-----------|-----------|-----------|-----------|-----------|
  bitcoin |      1761 |         0 |         0 |         0 |         0 |      1761 | 
  |  3296.986 |   258.766 |   462.718 |    59.544 |   489.986 |           | 
  |     1.000 |     0.000 |     0.000 |     0.000 |     0.000 |     0.278 | 
  |     1.000 |     0.000 |     0.000 |     0.000 |     0.000 |           | 
  |     0.278 |     0.000 |     0.000 |     0.000 |     0.000 |           | 
  -------------|-----------|-----------|-----------|-----------|-----------|-----------|
  bitcoin-cash |         0 |         0 |         0 |       214 |         0 |       214 | 
  |    59.544 |    31.446 |    56.230 |  5908.236 |    59.544 |           | 
  |     0.000 |     0.000 |     0.000 |     1.000 |     0.000 |     0.034 | 
  |     0.000 |     0.000 |     0.000 |     1.000 |     0.000 |           | 
  |     0.000 |     0.000 |     0.000 |     0.034 |     0.000 |           | 
  -------------|-----------|-----------|-----------|-----------|-----------|-----------|
  ethereum |         0 |       930 |         0 |         0 |         0 |       930 | 
  |   258.766 |  4605.657 |   244.366 |    31.446 |   258.766 |           | 
  |     0.000 |     1.000 |     0.000 |     0.000 |     0.000 |     0.147 | 
  |     0.000 |     1.000 |     0.000 |     0.000 |     0.000 |           | 
  |     0.000 |     0.147 |     0.000 |     0.000 |     0.000 |           | 
  -------------|-----------|-----------|-----------|-----------|-----------|-----------|
  litecoin |         0 |         0 |         0 |         0 |      1761 |      1761 | 
  |   489.986 |   258.766 |   462.718 |    59.544 |  3296.986 |           | 
  |     0.000 |     0.000 |     0.000 |     0.000 |     1.000 |     0.278 | 
  |     0.000 |     0.000 |     0.000 |     0.000 |     1.000 |           | 
  |     0.000 |     0.000 |     0.000 |     0.000 |     0.278 |           | 
  -------------|-----------|-----------|-----------|-----------|-----------|-----------|
  ripple |         0 |         0 |      1663 |         0 |         0 |      1663 | 
  |   462.718 |   244.366 |  3439.968 |    56.230 |   462.718 |           | 
  |     0.000 |     0.000 |     1.000 |     0.000 |     0.000 |     0.263 | 
  |     0.000 |     0.000 |     1.000 |     0.000 |     0.000 |           | 
  |     0.000 |     0.000 |     0.263 |     0.000 |     0.000 |           | 
  -------------|-----------|-----------|-----------|-----------|-----------|-----------|
  Column Total |      1761 |       930 |      1663 |       214 |      1761 |      6329 | 
  |     0.278 |     0.147 |     0.263 |     0.034 |     0.278 |           | 
  -------------|-----------|-----------|-----------|-----------|-----------|-----------|
  
  
  > boxplot(coin.df$open~coin.df$slug)
> boxplot(coin.df$close~coin.df$slug)
> boxplot(coin.df$spread~coin.df$slug)
> hist(coin.df$open,main="opening values of crypto currencies.",xlab="open",ylab = "no. of time.")
> hist(coin.df$close,main="closing  values of crypto currencies.",xlab="close",ylab = "no. of time.")
> hist(coin.df$high,main="maximum values of crypto currencies.",xlab="max value",ylab = "no. of time.")
> hist(coin.df$low,main="minimum values of crypto currencies.",xlab="min value",ylab = "no. of time.")
> hist(coin.df$close_ratio,main = "histogram for close ratio",xlab="close_ratio")
> library(car)
Error in library(car) : there is no package called ‘car’
> scatterplotMatrix(formula= ~open+high+low+spread+close, data=coin.df,diagonal="histogram",cex=0.1)
Error in scatterplotMatrix(formula = ~open + high + low + spread + close,  : 
                             could not find function "scatterplotMatrix"
                           > install.packages("car")
                           Installing package into ‘C:/Users/Òåîäîðà/Documents/R/win-library/3.5’
                           (as ‘lib’ is unspecified)
                           also installing the dependencies ‘magrittr’, ‘pkgconfig’, ‘R6’, ‘BH’, ‘rematch’, ‘assertthat’, ‘utf8’, ‘forcats’, ‘hms’, ‘readr’, ‘cellranger’, ‘zip’, ‘cli’, ‘crayon’, ‘pillar’, ‘rlang’, ‘SparseM’, ‘MatrixModels’, ‘sp’, ‘haven’, ‘curl’, ‘data.table’, ‘readxl’, ‘openxlsx’, ‘tibble’, ‘minqa’, ‘nloptr’, ‘Rcpp’, ‘RcppEigen’, ‘carData’, ‘abind’, ‘pbkrtest’, ‘quantreg’, ‘maptools’, ‘rio’, ‘lme4’
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/magrittr_1.5.zip'
                           Content type 'application/zip' length 155388 bytes (151 KB)
                           downloaded 151 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/pkgconfig_2.0.1.zip'
                           Content type 'application/zip' length 22111 bytes (21 KB)
                           downloaded 21 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/R6_2.2.2.zip'
                           Content type 'application/zip' length 334745 bytes (326 KB)
                           downloaded 326 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/BH_1.66.0-1.zip'
                           Content type 'application/zip' length 17880019 bytes (17.1 MB)
                           downloaded 17.1 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/rematch_1.0.1.zip'
                           Content type 'application/zip' length 15981 bytes (15 KB)
                           downloaded 15 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/assertthat_0.2.0.zip'
                           Content type 'application/zip' length 53499 bytes (52 KB)
                           downloaded 52 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/utf8_1.1.4.zip'
                           Content type 'application/zip' length 214395 bytes (209 KB)
                           downloaded 209 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/forcats_0.3.0.zip'
                           Content type 'application/zip' length 209273 bytes (204 KB)
                           downloaded 204 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/hms_0.4.2.zip'
                           Content type 'application/zip' length 56272 bytes (54 KB)
                           downloaded 54 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/readr_1.1.1.zip'
                           Content type 'application/zip' length 1378172 bytes (1.3 MB)
                           downloaded 1.3 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/cellranger_1.1.0.zip'
                           Content type 'application/zip' length 103162 bytes (100 KB)
                           downloaded 100 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/zip_1.0.0.zip'
                           Content type 'application/zip' length 104826 bytes (102 KB)
                           downloaded 102 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/cli_1.0.0.zip'
                           Content type 'application/zip' length 329327 bytes (321 KB)
                           downloaded 321 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/crayon_1.3.4.zip'
                           Content type 'application/zip' length 749508 bytes (731 KB)
                           downloaded 731 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/pillar_1.2.3.zip'
                           Content type 'application/zip' length 146529 bytes (143 KB)
                           downloaded 143 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/rlang_0.2.1.zip'
                           Content type 'application/zip' length 822805 bytes (803 KB)
                           downloaded 803 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/SparseM_1.77.zip'
                           Content type 'application/zip' length 1374637 bytes (1.3 MB)
                           downloaded 1.3 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/MatrixModels_0.4-1.zip'
                           Content type 'application/zip' length 380835 bytes (371 KB)
                           downloaded 371 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/sp_1.3-1.zip'
                           Content type 'application/zip' length 1869469 bytes (1.8 MB)
                           downloaded 1.8 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/haven_1.1.1.zip'
                           Content type 'application/zip' length 901613 bytes (880 KB)
                           downloaded 880 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/curl_3.2.zip'
                           Content type 'application/zip' length 2985853 bytes (2.8 MB)
                           downloaded 2.8 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/data.table_1.11.4.zip'
                           Content type 'application/zip' length 1829266 bytes (1.7 MB)
                           downloaded 1.7 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/readxl_1.1.0.zip'
                           Content type 'application/zip' length 1497904 bytes (1.4 MB)
                           downloaded 1.4 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/openxlsx_4.1.0.zip'
                           Content type 'application/zip' length 2698982 bytes (2.6 MB)
                           downloaded 2.6 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/tibble_1.4.2.zip'
                           Content type 'application/zip' length 243267 bytes (237 KB)
                           downloaded 237 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/minqa_1.2.4.zip'
                           Content type 'application/zip' length 675065 bytes (659 KB)
                           downloaded 659 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/nloptr_1.0.4.zip'
                           Content type 'application/zip' length 1210397 bytes (1.2 MB)
                           downloaded 1.2 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/Rcpp_0.12.17.zip'
                           Content type 'application/zip' length 4506168 bytes (4.3 MB)
                           downloaded 4.3 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/RcppEigen_0.3.3.4.0.zip'
                           Content type 'application/zip' length 2672419 bytes (2.5 MB)
                           downloaded 2.5 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/carData_3.0-1.zip'
                           Content type 'application/zip' length 1775821 bytes (1.7 MB)
                           downloaded 1.7 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/abind_1.4-5.zip'
                           Content type 'application/zip' length 63418 bytes (61 KB)
                           downloaded 61 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/pbkrtest_0.4-7.zip'
                           Content type 'application/zip' length 260735 bytes (254 KB)
                           downloaded 254 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/quantreg_5.36.zip'
                           Content type 'application/zip' length 2376223 bytes (2.3 MB)
                           downloaded 2.3 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/maptools_0.9-2.zip'
                           Content type 'application/zip' length 2143906 bytes (2.0 MB)
                           downloaded 2.0 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/rio_0.5.10.zip'
                           Content type 'application/zip' length 153293 bytes (149 KB)
                           downloaded 149 KB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/lme4_1.1-17.zip'
                           Content type 'application/zip' length 5690415 bytes (5.4 MB)
                           downloaded 5.4 MB
                           
                           trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/car_3.0-0.zip'
                           Content type 'application/zip' length 1470430 bytes (1.4 MB)
                           downloaded 1.4 MB
                           
                           package ‘magrittr’ successfully unpacked and MD5 sums checked
                           package ‘pkgconfig’ successfully unpacked and MD5 sums checked
                           package ‘R6’ successfully unpacked and MD5 sums checked
                           package ‘BH’ successfully unpacked and MD5 sums checked
                           package ‘rematch’ successfully unpacked and MD5 sums checked
                           package ‘assertthat’ successfully unpacked and MD5 sums checked
                           package ‘utf8’ successfully unpacked and MD5 sums checked
                           package ‘forcats’ successfully unpacked and MD5 sums checked
                           package ‘hms’ successfully unpacked and MD5 sums checked
                           package ‘readr’ successfully unpacked and MD5 sums checked
                           package ‘cellranger’ successfully unpacked and MD5 sums checked
                           package ‘zip’ successfully unpacked and MD5 sums checked
                           package ‘cli’ successfully unpacked and MD5 sums checked
                           package ‘crayon’ successfully unpacked and MD5 sums checked
                           package ‘pillar’ successfully unpacked and MD5 sums checked
                           package ‘rlang’ successfully unpacked and MD5 sums checked
                           package ‘SparseM’ successfully unpacked and MD5 sums checked
                           package ‘MatrixModels’ successfully unpacked and MD5 sums checked
                           package ‘sp’ successfully unpacked and MD5 sums checked
                           package ‘haven’ successfully unpacked and MD5 sums checked
                           package ‘curl’ successfully unpacked and MD5 sums checked
                           package ‘data.table’ successfully unpacked and MD5 sums checked
                           package ‘readxl’ successfully unpacked and MD5 sums checked
                           package ‘openxlsx’ successfully unpacked and MD5 sums checked
                           package ‘tibble’ successfully unpacked and MD5 sums checked
                           package ‘minqa’ successfully unpacked and MD5 sums checked
                           package ‘nloptr’ successfully unpacked and MD5 sums checked
                           package ‘Rcpp’ successfully unpacked and MD5 sums checked
                           package ‘RcppEigen’ successfully unpacked and MD5 sums checked
                           package ‘carData’ successfully unpacked and MD5 sums checked
                           package ‘abind’ successfully unpacked and MD5 sums checked
                           package ‘pbkrtest’ successfully unpacked and MD5 sums checked
                           package ‘quantreg’ successfully unpacked and MD5 sums checked
                           package ‘maptools’ successfully unpacked and MD5 sums checked
                           package ‘rio’ successfully unpacked and MD5 sums checked
                           package ‘lme4’ successfully unpacked and MD5 sums checked
                           package ‘car’ successfully unpacked and MD5 sums checked
                           
                           The downloaded binary packages are in
                           C:\Users\Òåîäîðà\AppData\Local\Temp\Rtmpe0kBDa\downloaded_packages
                           > library(car)
                           Loading required package: carData
                           > scatterplotMatrix(formula= ~open+high+low+spread+close, data=coin.df,diagonal="histogram",cex=0.1)
                           Warning message:
                             In applyDefaults(diagonal, defaults = list(method = "adaptiveDensity"),  :
                                                unnamed diag arguments, will be ignored
                                              > scatterplotMatrix(formula= ~open+high+low+spread+close, data=coin.df,diagonal="histogram",cex=0.1)
                                              Warning message:
                                                In applyDefaults(diagonal, defaults = list(method = "adaptiveDensity"),  :
                                                                   unnamed diag arguments, will be ignored
                                                                 > 
                                                                   > 
                                                                   > install.packages("corrgram")
                                                                 Installing package into ‘C:/Users/Òåîäîðà/Documents/R/win-library/3.5’
                                                                 (as ‘lib’ is unspecified)
                                                                 also installing the dependencies ‘glue’, ‘stringi’, ‘stringr’, ‘RColorBrewer’, ‘dichromat’, ‘munsell’, ‘labeling’, ‘modeltools’, ‘DEoptimR’, ‘iterators’, ‘digest’, ‘gtable’, ‘plyr’, ‘reshape2’, ‘scales’, ‘lazyeval’, ‘mclust’, ‘flexmix’, ‘prabclus’, ‘diptest’, ‘mvtnorm’, ‘robustbase’, ‘kernlab’, ‘trimcluster’, ‘viridisLite’, ‘gridExtra’, ‘bitops’, ‘foreach’, ‘ggplot2’, ‘fpc’, ‘whisker’, ‘viridis’, ‘caTools’, ‘TSP’, ‘qap’, ‘gclus’, ‘dendextend’, ‘colorspace’, ‘gplots’, ‘registry’, ‘seriation’
                                                                 
                                                                 
                                                                 There is a binary version available but the source version is later:
                                                                   binary source needs_compilation
                                                                 stringi  1.1.7  1.2.3              TRUE
                                                                 
                                                                 Binaries will be installed
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/glue_1.2.0.zip'
                                                                 Content type 'application/zip' length 75901 bytes (74 KB)
                                                                 downloaded 74 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/stringi_1.1.7.zip'
                                                                 Content type 'application/zip' length 14368013 bytes (13.7 MB)
                                                                 downloaded 13.7 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/stringr_1.3.1.zip'
                                                                 Content type 'application/zip' length 194897 bytes (190 KB)
                                                                 downloaded 190 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/RColorBrewer_1.1-2.zip'
                                                                 Content type 'application/zip' length 55444 bytes (54 KB)
                                                                 downloaded 54 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/dichromat_2.0-0.zip'
                                                                 Content type 'application/zip' length 149059 bytes (145 KB)
                                                                 downloaded 145 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/munsell_0.5.0.zip'
                                                                 Content type 'application/zip' length 243131 bytes (237 KB)
                                                                 downloaded 237 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/labeling_0.3.zip'
                                                                 Content type 'application/zip' length 61841 bytes (60 KB)
                                                                 downloaded 60 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/modeltools_0.2-21.zip'
                                                                 Content type 'application/zip' length 203840 bytes (199 KB)
                                                                 downloaded 199 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/DEoptimR_1.0-8.zip'
                                                                 Content type 'application/zip' length 41954 bytes (40 KB)
                                                                 downloaded 40 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/iterators_1.0.9.zip'
                                                                 Content type 'application/zip' length 338696 bytes (330 KB)
                                                                 downloaded 330 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/digest_0.6.15.zip'
                                                                 Content type 'application/zip' length 192646 bytes (188 KB)
                                                                 downloaded 188 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/gtable_0.2.0.zip'
                                                                 Content type 'application/zip' length 85483 bytes (83 KB)
                                                                 downloaded 83 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/plyr_1.8.4.zip'
                                                                 Content type 'application/zip' length 1296903 bytes (1.2 MB)
                                                                 downloaded 1.2 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/reshape2_1.4.3.zip'
                                                                 Content type 'application/zip' length 626669 bytes (611 KB)
                                                                 downloaded 611 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/scales_0.5.0.zip'
                                                                 Content type 'application/zip' length 790459 bytes (771 KB)
                                                                 downloaded 771 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/lazyeval_0.2.1.zip'
                                                                 Content type 'application/zip' length 166457 bytes (162 KB)
                                                                 downloaded 162 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/mclust_5.4.zip'
                                                                 Content type 'application/zip' length 4130057 bytes (3.9 MB)
                                                                 downloaded 3.9 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/flexmix_2.3-14.zip'
                                                                 Content type 'application/zip' length 1711802 bytes (1.6 MB)
                                                                 downloaded 1.6 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/prabclus_2.2-6.zip'
                                                                 Content type 'application/zip' length 373251 bytes (364 KB)
                                                                 downloaded 364 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/diptest_0.75-7.zip'
                                                                 Content type 'application/zip' length 363906 bytes (355 KB)
                                                                 downloaded 355 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/mvtnorm_1.0-8.zip'
                                                                 Content type 'application/zip' length 270167 bytes (263 KB)
                                                                 downloaded 263 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/robustbase_0.93-0.zip'
                                                                 Content type 'application/zip' length 3227362 bytes (3.1 MB)
                                                                 downloaded 3.1 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/kernlab_0.9-26.zip'
                                                                 Content type 'application/zip' length 2666050 bytes (2.5 MB)
                                                                 downloaded 2.5 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/trimcluster_0.1-2.zip'
                                                                 Content type 'application/zip' length 21038 bytes (20 KB)
                                                                 downloaded 20 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/viridisLite_0.3.0.zip'
                                                                 Content type 'application/zip' length 60471 bytes (59 KB)
                                                                 downloaded 59 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/gridExtra_2.3.zip'
                                                                 Content type 'application/zip' length 1108326 bytes (1.1 MB)
                                                                 downloaded 1.1 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/bitops_1.0-6.zip'
                                                                 Content type 'application/zip' length 38625 bytes (37 KB)
                                                                 downloaded 37 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/foreach_1.4.4.zip'
                                                                 Content type 'application/zip' length 419193 bytes (409 KB)
                                                                 downloaded 409 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/ggplot2_2.2.1.zip'
                                                                 Content type 'application/zip' length 3157706 bytes (3.0 MB)
                                                                 downloaded 3.0 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/fpc_2.1-11.zip'
                                                                 Content type 'application/zip' length 660118 bytes (644 KB)
                                                                 downloaded 644 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/whisker_0.3-2.zip'
                                                                 Content type 'application/zip' length 80923 bytes (79 KB)
                                                                 downloaded 79 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/viridis_0.5.1.zip'
                                                                 Content type 'application/zip' length 1866645 bytes (1.8 MB)
                                                                 downloaded 1.8 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/caTools_1.17.1.zip'
                                                                 Content type 'application/zip' length 328982 bytes (321 KB)
                                                                 downloaded 321 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/TSP_1.1-6.zip'
                                                                 Content type 'application/zip' length 840044 bytes (820 KB)
                                                                 downloaded 820 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/qap_0.1-1.zip'
                                                                 Content type 'application/zip' length 537558 bytes (524 KB)
                                                                 downloaded 524 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/gclus_1.3.1.zip'
                                                                 Content type 'application/zip' length 118411 bytes (115 KB)
                                                                 downloaded 115 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/dendextend_1.8.0.zip'
                                                                 Content type 'application/zip' length 2087074 bytes (2.0 MB)
                                                                 downloaded 2.0 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/colorspace_1.3-2.zip'
                                                                 Content type 'application/zip' length 528273 bytes (515 KB)
                                                                 downloaded 515 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/gplots_3.0.1.zip'
                                                                 Content type 'application/zip' length 656616 bytes (641 KB)
                                                                 downloaded 641 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/registry_0.5.zip'
                                                                 Content type 'application/zip' length 207521 bytes (202 KB)
                                                                 downloaded 202 KB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/seriation_1.2-3.zip'
                                                                 Content type 'application/zip' length 1171005 bytes (1.1 MB)
                                                                 downloaded 1.1 MB
                                                                 
                                                                 trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/corrgram_1.12.zip'
                                                                 Content type 'application/zip' length 1074756 bytes (1.0 MB)
                                                                 downloaded 1.0 MB
                                                                 
                                                                 package ‘glue’ successfully unpacked and MD5 sums checked
                                                                 package ‘stringi’ successfully unpacked and MD5 sums checked
                                                                 package ‘stringr’ successfully unpacked and MD5 sums checked
                                                                 package ‘RColorBrewer’ successfully unpacked and MD5 sums checked
                                                                 package ‘dichromat’ successfully unpacked and MD5 sums checked
                                                                 package ‘munsell’ successfully unpacked and MD5 sums checked
                                                                 package ‘labeling’ successfully unpacked and MD5 sums checked
                                                                 package ‘modeltools’ successfully unpacked and MD5 sums checked
                                                                 package ‘DEoptimR’ successfully unpacked and MD5 sums checked
                                                                 package ‘iterators’ successfully unpacked and MD5 sums checked
                                                                 package ‘digest’ successfully unpacked and MD5 sums checked
                                                                 package ‘gtable’ successfully unpacked and MD5 sums checked
                                                                 package ‘plyr’ successfully unpacked and MD5 sums checked
                                                                 package ‘reshape2’ successfully unpacked and MD5 sums checked
                                                                 package ‘scales’ successfully unpacked and MD5 sums checked
                                                                 package ‘lazyeval’ successfully unpacked and MD5 sums checked
                                                                 package ‘mclust’ successfully unpacked and MD5 sums checked
                                                                 package ‘flexmix’ successfully unpacked and MD5 sums checked
                                                                 package ‘prabclus’ successfully unpacked and MD5 sums checked
                                                                 package ‘diptest’ successfully unpacked and MD5 sums checked
                                                                 package ‘mvtnorm’ successfully unpacked and MD5 sums checked
                                                                 package ‘robustbase’ successfully unpacked and MD5 sums checked
                                                                 package ‘kernlab’ successfully unpacked and MD5 sums checked
                                                                 package ‘trimcluster’ successfully unpacked and MD5 sums checked
                                                                 package ‘viridisLite’ successfully unpacked and MD5 sums checked
                                                                 package ‘gridExtra’ successfully unpacked and MD5 sums checked
                                                                 package ‘bitops’ successfully unpacked and MD5 sums checked
                                                                 package ‘foreach’ successfully unpacked and MD5 sums checked
                                                                 package ‘ggplot2’ successfully unpacked and MD5 sums checked
                                                                 package ‘fpc’ successfully unpacked and MD5 sums checked
                                                                 package ‘whisker’ successfully unpacked and MD5 sums checked
                                                                 package ‘viridis’ successfully unpacked and MD5 sums checked
                                                                 package ‘caTools’ successfully unpacked and MD5 sums checked
                                                                 package ‘TSP’ successfully unpacked and MD5 sums checked
                                                                 package ‘qap’ successfully unpacked and MD5 sums checked
                                                                 package ‘gclus’ successfully unpacked and MD5 sums checked
                                                                 package ‘dendextend’ successfully unpacked and MD5 sums checked
                                                                 package ‘colorspace’ successfully unpacked and MD5 sums checked
                                                                 package ‘gplots’ successfully unpacked and MD5 sums checked
                                                                 package ‘registry’ successfully unpacked and MD5 sums checked
                                                                 package ‘seriation’ successfully unpacked and MD5 sums checked
                                                                 package ‘corrgram’ successfully unpacked and MD5 sums checked
                                                                 
                                                                 The downloaded binary packages are in
                                                                 C:\Users\Òåîäîðà\AppData\Local\Temp\Rtmpe0kBDa\downloaded_packages
                                                                 > library(corrgram)
                                                                 > corrgram(coin.df[,c(5,6,7,8,11,12)],order = TRUE, lower.panel=panel.shade,upper.panel=panel.pie, text.panel=panel.txt)
                                                                 > cor(coin.df[,c(5,6,7,8,12)])
                                                                 ranknow        open        high         low close_ratio
                                                                 ranknow      1.00000000 -0.28297092 -0.27991398 -0.28787297 -0.06784205
                                                                 open        -0.28297092  1.00000000  0.99875126  0.99783635  0.04204571
                                                                 high        -0.27991398  0.99875126  1.00000000  0.99805783  0.04672456
                                                                 low         -0.28787297  0.99783635  0.99805783  1.00000000  0.04764873
                                                                 close_ratio -0.06784205  0.04204571  0.04672456  0.04764873  1.00000000
                                                                 > fit  <- lm(coin.df$spread~ coin.df$market)
                                                                 > summary(fit)
                                                                 
                                                                 Call:
                                                                   lm(formula = coin.df$spread ~ coin.df$market)
                                                                 
                                                                 Residuals:
                                                                   Min      1Q  Median      3Q     Max 
                                                                 -710.90   -2.08   13.83   14.72 2676.17 
                                                                 
                                                                 Coefficients:
                                                                   Estimate Std. Error t value Pr(>|t|)    
                                                                 (Intercept)    -1.529e+01  1.601e+00  -9.553   <2e-16 ***
                                                                   coin.df$market  5.442e-09  4.963e-11 109.641   <2e-16 ***
                                                                   ---
                                                                   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
                                                                 
                                                                 Residual standard error: 120.3 on 6327 degrees of freedom
                                                                 Multiple R-squared:  0.6552,	Adjusted R-squared:  0.6551 
                                                                 F-statistic: 1.202e+04 on 1 and 6327 DF,  p-value: < 2.2e-16
                                                                 
                                                                 > fit1  <- lm(coin.df$spread~ coin.df$close_ratio+coin.df$open+coin.df$close+coin.df$market)
                                                                 > summary(fit1)
                                                                 
                                                                 Call:
                                                                   lm(formula = coin.df$spread ~ coin.df$close_ratio + coin.df$open + 
                                                                        coin.df$close + coin.df$market)
                                                                 
                                                                 Residuals:
                                                                   Min      1Q  Median      3Q     Max 
                                                                 -961.09   -4.69    7.62    8.11 2463.83 
                                                                 
                                                                 Coefficients:
                                                                   Estimate Std. Error t value Pr(>|t|)    
                                                                 (Intercept)         -7.676e+00  2.538e+00  -3.025  0.00250 ** 
                                                                   coin.df$close_ratio -8.175e-01  4.246e+00  -0.193  0.84733    
                                                                 coin.df$open         1.247e-01  1.067e-02  11.687  < 2e-16 ***
                                                                   coin.df$close       -2.607e-02  1.045e-02  -2.493  0.01268 *  
                                                                   coin.df$market       3.147e-10  1.164e-10   2.705  0.00686 ** 
                                                                   ---
                                                                   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
                                                                 
                                                                 Residual standard error: 103.3 on 6324 degrees of freedom
                                                                 Multiple R-squared:  0.7457,	Adjusted R-squared:  0.7455 
                                                                 F-statistic:  4635 on 4 and 6324 DF,  p-value: < 2.2e-16
                                                                 
                                                                 > confint(fit1)
                                                                 2.5 %        97.5 %
                                                                   (Intercept)         -1.265132e+01 -2.701138e+00
                                                                 coin.df$close_ratio -9.141426e+00  7.506388e+00
                                                                 coin.df$open         1.037605e-01  1.455854e-01
                                                                 coin.df$close       -4.656305e-02 -5.573433e-03
                                                                 coin.df$market       8.659115e-11  5.427751e-10
                                                                 > coefficients(fit1)
                                                                 (Intercept) coin.df$close_ratio        coin.df$open       coin.df$close 
                                                                 -7.676229e+00       -8.175191e-01        1.246730e-01       -2.606824e-02 
                                                                 coin.df$market 
                                                                 3.146831e-10 
                                                                 > summary(coin.df)
                                                                 slug      symbol               name              date     
                                                                 bitcoin     :1761   BCH: 214   Bitcoin     :1761   2017-07-23:   5  
                                                                 bitcoin-cash: 214   BTC:1761   Bitcoin Cash: 214   2017-07-24:   5  
                                                                 ethereum    : 930   ETH: 930   Ethereum    : 930   2017-07-25:   5  
                                                                 litecoin    :1761   LTC:1761   Litecoin    :1761   2017-07-26:   5  
                                                                 ripple      :1663   XRP:1663   Ripple      :1663   2017-07-27:   5  
                                                                 2017-07-28:   5  
                                                                 (Other)   :6299  
                                                                 ranknow           open                high                low           
                                                                 Min.   :1.000   Min.   :    0.003   Min.   :    0.003   Min.   :    0.003  
                                                                 1st Qu.:1.000   1st Qu.:    0.319   1st Qu.:    0.345   1st Qu.:    0.292  
                                                                 Median :3.000   Median :    9.330   Median :    9.780   Median :    8.880  
                                                                 Mean   :2.887   Mean   :  478.040   Mean   :  498.680   Mean   :  456.350  
                                                                 3rd Qu.:5.000   3rd Qu.:  320.440   3rd Qu.:  332.980   3rd Qu.:  309.640  
                                                                 Max.   :5.000   Max.   :19475.800   Max.   :20089.000   Max.   :18974.100  
                                                                 
                                                                 close               volume              market           close_ratio    
                                                                 Min.   :    0.003   Min.   :0.000e+00   Min.   :0.000e+00   Min.   :0.0000  
                                                                 1st Qu.:    0.323   1st Qu.:8.380e+05   1st Qu.:1.813e+08   1st Qu.:0.2381  
                                                                 Median :    9.350   Median :8.171e+06   Median :9.012e+08   Median :0.5000  
                                                                 Mean   :  479.892   Mean   :4.232e+08   Mean   :1.059e+10   Mean   :0.5069  
                                                                 3rd Qu.:  320.880   3rd Qu.:9.201e+07   3rd Qu.:7.292e+09   3rd Qu.:0.7861  
                                                                 Max.   :19497.400   Max.   :2.384e+10   Max.   :3.261e+11   Max.   :1.0000  
                                                                 
                                                                 spread       
                                                                 Min.   :   0.00  
                                                                 1st Qu.:   0.03  
                                                                 Median :   0.48  
                                                                 Mean   :  42.33  
                                                                 3rd Qu.:  10.89  
                                                                 Max.   :4110.40 