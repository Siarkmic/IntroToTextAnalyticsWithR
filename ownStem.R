
# słownik2 to jedna kolumna z nazwami wierszy


slownik <- read.csv("C:/Users/siarkmi2/Documents/R/polimorfologik-2.1.txt",
                      header=F, sep=";", stringsAsFactors=FALSE, encoding = "UTF-8"
                )
class(slownik)
View(slownik)

slownik <- slownik[!duplicated(slownik[,1]),]
rownames(slownik) <- slownik[,1]
slownik2 <- slownik[,2,drop=F]

# słowa to wektor słów do przekonwertowania
# rdzenie <- slownik2[as.character(slowa),]


temp_list <- as.list(slownik[,2]) 
names(temp_list) <- slownik[,1]
(stem_dict <- dictionary(temp_list))



