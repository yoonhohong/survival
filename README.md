# Survival

https://www.emilyzabor.com/tutorials/survival_analysis_in_r_tutorial.html


## References 

A PRACTICAL GUIDE TO UNDERSTANDING KAPLAN-MEIER CURVES. Otolaryngology head and neck surgery: official journal of American Academy of Otolaryngology Head and Neck Surgery. 2010;143(3):331-336. doi:10.1016/j.otohns.2010.05.007.


Clark, T., Bradburn, M., Love, S., & Altman, D. (2003). Survival analysis part I: Basic concepts and first analyses. 232-238. ISSN 0007-0920.

M J Bradburn, T G Clark, S B Love, & D G Altman. (2003). Survival Analysis Part II: Multivariate data analysis – an introduction to concepts and methods. British Journal of Cancer, 89(3), 431-436.

Bradburn, M., Clark, T., Love, S., & Altman, D. (2003). Survival analysis Part III: Multivariate data analysis – choosing a model and assessing its adequacy and fit. 89(4), 605-11.

Clark, T., Bradburn, M., Love, S., & Altman, D. (2003). Survival analysis part IV: Further concepts and methods in survival analysis. 781-786. ISSN 0007-0920.

regularized cox regression    
chrome-extension://efaidnbmnnnibpcajpcglclefindmkaj/viewer.html?pdfurl=https%3A%2F%2Fcran.r-project.org%2Fweb%2Fpackages%2Fglmnet%2Fvignettes%2FCoxnet.pdf&clen=111379&chunk=true

regularized AFT    

random survival forest    

## Packages::functions/operators 

dplyr::tibble()   
lubridate::ymd()    
lubridate::as.duration(<start date> %--% <end date>)    
lubridate::dyears()    
survival::Surv()  
survival::survfit()    
survminer::ggsurvplot()    
survdiff()    
coxph()  
broom::tidy()    
gtsummary::tbl_regression()    






생존함수는 조건부 확률   
누적분포함수   

KM estimate 는 생존 확률에 대한 추정값        
조건부 확률값들의 곱으로 계산   

> the censored subjects only contribute information for part of the follow-up time, and then fall out of the risk set, thus pulling down the cumulative probability of survival (즉, censoring 때문에 생존함수 곡선의 하향 편향이 일어난다.)      

> Ignoring censoring (즉, 생존분석에서 제외하면) creates an artificially lowered survival curve, because the follow-up time that censored patients contribute is excluded

Hazard 는 어떤 시점에서의 사건 발생률      
생존 확률과는 어떤 관계인가?     


Hazard ratio (HR)  
exp(beta)   


Landmark analysis    

Anderson, J., Cain, K., & Gelber, R. (1983). Analysis of survival by tumor response. Journal of Clinical Oncology : Official Journal of the American Society of Clinical Oncology, 1(11), 710-9.   

Landmark approach        

1. Select a fixed time after baseline as your landmark time.    
Note: this should be done based on clinical information, prior to data inspection   
2. Subset population for those followed at least until landmark time.   
Note: always report the number excluded due to the event of interest or censoring prior to the landmark time.   
3. Calculate follow-up from landmark time and apply traditional log-rank tests or Cox regression     


Time-depedent covariates    

``` r
library(dplyr)
```    

    
https://cran.r-project.org/web/packages/survival/vignettes/timedep.pdf    







  






















