library(stringr)

#zad1

tekst1 = list("TERYT 18; podkarpackie; Rzeszów; 0.2 He; A", 
 "TERYT 22; pomorskie;   Gdańsk; 12 C ; B")

str_sub(tekst1[1], start = -5, end = -4)
str_sub(tekst1[2], start = -5, end = -4)

#zad2

horoskop = function (imie, miesiac){
  if (miesiac %% 2 == 0) {
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  } else {
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście."))
  }
}
horoskop("Ula", 9)


#zad3

horoskop = function(imie, miesiac){
  if (str_detect(imie, pattern = "^K|M|Z")){
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  } else if (miesiac %% 2 == 0){
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  } else {
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście."))
  }
}

horoskop("Ula", 1)

#zad4

pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3"

pomiary = str_replace_all(pomiary, pattern = "[\\/|.]", replacement = "\\-")

str_extract_all(pomiary, pattern = "[0-9]+[\\-][a-z0-9]+[\\-][0-9]*")

daty = str_extract_all(pomiary, pattern = "[0-9]+[\\-|/|.][a-z0-9]+[\\-|/|.][0-9]+")
daty

#zad5


