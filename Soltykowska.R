library(stringr)

#zad1

tekst1 = list("TERYT 18; podkarpackie; Rzeszów; 0.2 He; A", 
 "TERYT 22; pomorskie;   Gdańsk; 12 C ; B")

str_sub(tekst1[1], start = -5, end = -4)
str_sub(tekst1[2], start = -5, end = -4)

#zad2

horoskop = function (imie, miesiac){
  if (miesiac %in% c(2,4,6,8,10,12)) {
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro szczęście."))
  } else if (miesiac %in% c(1,3,5,7,9,11)) {
    cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście."))
  }
}
horoskop("Ula", 9)


#zad3

horoskop = function (imie, miesiac){
   if ((miesiac %% 2) || (str_detect(imie, pattern = "^K", "^M", "^Z"))){
    cat(paste("Osoba o imieniu",imie, "będzie miała jutro szczęście."))
  } else cat(paste("Osoba o imieniu", imie, "będzie miała jutro nieszczęście."))
}


#zad4

pomiary = "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14
