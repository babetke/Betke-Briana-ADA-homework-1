##################### Challenge 1
# Create quote vector
quote <- c("There is grandeur in this view of life, with its several powers, having been originally breathed by the Creator into a few forms or into one; and that, whilst this planet has gone circling on according to the fixed law of gravity, from so simple a beginning endless forms most beautiful and most wonderful have been, and are being evolved.")
# Removing punctuation 
quote <- gsub("[[:punct:]]","", quote)

# Split the vector by word.
split_quote <- str_split(quote, " ")
split_quote

# Take every forth word
every_fourth <- split_quote[[1]][seq(from = 1, to = 60, by = 4)]
every_fourth

# reverse alphabetical order.
sort(every_fourth, decreasing = TRUE)

##################### Challenge 2
dat <- 1:159
dat

m1 <- matrix(data = seq(from = 1, to = 159, by = 2), nrow = 8, ncol = 10) # this is a matrix
m1

m1[5,2]

m1[5:7, ]

m2 <- m1[3:6,4:9]
m2

class(m2)

mode(m2)


################ challenge 3 array

# Create array
a <- array(data = 400:1, dim = c(5, 5, 4, 4))
a

a[1, 1, 1, 2]

a[2, 3, 2, ]

a[1:5, 1:5, 3, 3]

###################### Challenge 4 

# Starting with the suborder strepsirhini
# Make a list for the infraorder lorisiformes 
lorisFam <- c("Lorisidae", "Galagidae") # create a character vector of superfamily 
lorisSuper <- list(lorisFam) # Make a list
names(lorisSuper) <- "lorisoidea" # Name it super family name

# Do the same for lemuriformes
lemurFam<- c("Cheirogaleidae","Lepilemuridae","Indriidae","Lemuridae","Daubentoniidae")
lemurSuper <- list(lemurFam)
names(lemurSuper) <- "Lemuroidea"

# Suborder strepsirhini 
strepsirhini <- list(lorisSuper,lemurSuper) # make a list of superfamilies
names(strepsirhini) <- c("lorisiformes","lemuriformes") # Name them by infraorder

# Creating list for haplorhini
# Tarsiiformes
tarsirFam <- "Tarsiidae"
tarsirSuper <- list(tarsirFam)
names(tarsirSuper) <- "Tarsioidea"

## Simiiformes
# Parvorder: Platy
ceboFam <- c("Cebidae", "Atelidae", "Pitheciidae")
ceboSuper <- list(ceboFam)
names(ceboSuper) <- "Ceboidea"

# Parvorder catarrhini
# superfam Hominids
hominFam <- c("Hylobatidae", "Hominidae")
hominSuper <- list(hominFam)
names(hominSuper) <- "Hominoidea"

# other superfam
cercFam <- "Cercopithecidae"
cercSuper <- list(cercFam)
names(cercSuper) <- "Cercopithecoidea"

# create list for Catarrhini
catarr <- list(hominSuper, cercSuper)
catarr

# Create list for Simiiformes
simiInfra <- list(ceboSuper,catarr)
names(simiInfra) <- c("Platyrrhini","Catarrhini")
simiInfra

# combine Tarsiiformes and Simiiformes
haplor <- list(tarsirSuper,simiInfra)
names(haplor) <- c("Tarsiiformes","Simiiformes")
haplor

# put Strepsirhini and Haplorhini together and call it primates
primates <- list(strepsirhini,haplor)
names(primates) <- c("Strepsirhini","Haplorhini")

# Extract Platyrrhini and name it nwm.
nwm <- primates[["Haplorhini"]][["Simiiformes"]][["Platyrrhini"]]
nwm

# Get the class of nwm
class(nwm)

# Get the Mode of nwm
mode(nwm)

# $ sign notation to extract tarsirs
primates$Haplorhini$Tarsiiformes$Tarsioidea


