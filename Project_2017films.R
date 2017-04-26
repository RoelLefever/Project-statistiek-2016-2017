## DATA INLEZEN EN MANIPULEREN

#Inlezen van de gegevens
films = read.table("films.txt", header=TRUE, sep="\t", na.strings = "", dec = ".") 

#Omzetten van bedragen in dollar naar bedragen in euro met als wisselkoers 1$ = 0.918750316 EUR
films$opbrengst = films$opbrengst*0.918750316 
films$budget = films$budget*0.918750316

#landen omzetten naar 'VS' of 'niet VS'
class(films$land)
films$land = as.factor(films$land)
levels(films$land)
a = as.vector(levels(films$land[films$land != "USA"]))
levels(films$land) = list("Niet VS" = a, "VS" = "USA")
films$land

#Film rating labels
films$film_rating
class(films$film_rating)
films$film_rating = as.factor(films$film_rating)
levels(films$film_rating) = list("PG: kinderen" = c(0) , "PG-13: tieners" = c(1), "R: volwassenen" = c(2))
films$film_rating

#Regisseur verwijderen
films$regisseur = NULL


##Beschrijvende Statistiek
