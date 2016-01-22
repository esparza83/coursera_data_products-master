<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style>
 .roundC {
 border-radius: 25px;
 padding:10px !important;
 }
</style>
Text Mining of Hapiness
========================================================
author: Pablo Esparza
date: 1/21/2016
css: http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css
**Developing Data Products Project**


Introduction
========================================================
<div class="well roundC" >
 The Text Mining of Happiness application is intended to give an score of the level of hapiness the user could have, this score is calculated by the activities the user submitted. The application basic functions can be described as:
</div>
 <div class="bg-info col-md-10 roundC" style="margin-left:50px;font-size:22px;">
 - Read the corpus and split the sentences in unigrams.
 - Clasify the words with a positive or neative value
 - Allowing the user to imporve the score by adding suggested actiities.
 - Check the polarity of the sentence and assing an score.
</div>

Inner Functionality
========================================================
  Using the qarat package I used the polarity function. This function will split the sentence in unigrams and compare with the list of positive and negative words. Then it will sum the values of each word and assing a number +/-3, then I gave a format to that number in order to present just postive values.


```r
library(qdap)
#Text submmitted by the user
variable = "Some Text" 
#Aditional options
caption = "good" 
# Merge the input from the user and suggested activities
sen <- as.character(paste0(variable, ' and ',caption)) 
#Calculate the polarity
sen <- counts(polarity(sen)) 
#Format with just positive values
index <- round((sum(sen$polarity) +2)/4 ,digits = 2)*100 
# Add % symbol
level <- paste0(index,'%') 
#Display score
level
```

```
[1] "62%"
```


User entries
========================================================
<div style="font-size=18px;">
The user will type in the text box by answering the question "How was your day?"
<div class="midcenter" style="text-align:center;" >
<img style="width:25%;height:25%;" 
<div class="midcenter" style="text-align:center;" >
<img src="https://raw.githubusercontent.com/esparza83/coursera_data_products-master/master/Picture1.png"></img>
</div>
Also the user can improve they score by check on one or more suggestions
<div class="midcenter" style="text-align:center;" >
<img src="https://raw.githubusercontent.com/esparza83/coursera_data_products-master/master/Picture2.png"></img>
</div>
Finally the user will click on the "Reveal your score" button
<div class="midcenter" style="text-align:center;" >
<img src="https://raw.githubusercontent.com/esparza83/coursera_data_products-master/master/Picture3.png"></img>
</div>
</div>


Application Output
========================================================
<div class="well roundC" style="font-size:22px;">
The application sends in response of the user entry the current score.
</div>
<div class="well roundC" style="font-size:40px;">
Your current level of hapinnes is:
</div>
<div style="height:50%;text-align:center;margin-top:-30px">

```
[1] "59%"
```
<div>
