install.packages("multilinguer")
library(multilinguer)
install_jdk()
install.packages(c('stringr', 'hash', 'tau', 'Sejong', 'RSQLite', 'devtools'), type = "binary")
install.packages("remotes")
remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))
library(KoNLP)
install.packages("wordcloud2")
library(wordcloud2)

data <- readLines("d:/고은헤.txt", encoding = "UTF-8")
head(data)

data2<- unique(data)
data2

library(stringr)

data2 <-str_replace_all(data2, "[^[:alpha:][:blank:]]", "")
head(data2)

data2 <- extractNoun(data2)
head(data2)

data2 <- unlist(data2)
head(data2)

wc <- table(data2)
sort(wc, decreasing = T)

wordcloud2(data=wc, size=0.5)
letterCloud(data=wc, word="E", wordSize=1, fontFamily = '나눔바른고딕')
