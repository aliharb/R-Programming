require(RCurl)
library(RCurl)

myurl <- "https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data"
e_data <- getURL(myurl)

my_data <- read.csv(text=e_data,header=FALSE,sep=",")
head(my_data)
str(myData)

my_subset <- my_data[,c(1,4,6,9,20,23)]
colnames(my_subset) <- c("class","cap-color","odor","gill-size","ring-type","habitat")

View(head(my_subset))

levels(my_subset$'class') <- c(levels(my_subset$'class'), "edible", "poison")
my_subset$'class'[my_subset$'class' == "e"] <- "edible"
my_subset$'class'[my_subset$'class' == "p"] <- "poison"

levels(my_subset$'class') <- c(levels(my_subset$'class'), "edible", "poison")
my_subset$'class'[my_subset$'class' == "e"] <- "edible"
my_subset$'class'[my_subset$'class' == "p"] <- "poison"

levels(my_subset$'cap-color') <- c(levels(my_subset$'cap-color'),
                                   "brown", "buff","cinnamon","gray","green","pink","purple","red","white","yellow","bruises","n0")
my_subset$'cap-color'[my_subset$'cap-color' == "n"] <- "brown"
my_subset$'cap-color'[my_subset$'cap-color' == "b"] <- "buff"
my_subset$'cap-color'[my_subset$'cap-color' == "c"] <- "cinnamon"
my_subset$'cap-color'[my_subset$'cap-color' == "g"] <- "gray"
my_subset$'cap-color'[my_subset$'cap-color' == "r"] <- "green"
my_subset$'cap-color'[my_subset$'cap-color' == "p"] <- "pink"
my_subset$'cap-color'[my_subset$'cap-color' == "u"] <- "purple"
my_subset$'cap-color'[my_subset$'cap-color' == "e"] <- "red"
my_subset$'cap-color'[my_subset$'cap-color' == "w"] <- "white"
my_subset$'cap-color'[my_subset$'cap-color' == "y"] <- "yellow"
my_subset$'cap-color'[my_subset$'cap-color' == "t"] <- "bruises"
my_subset$'cap-color'[my_subset$'cap-color' == "f"] <- "n0"

levels(my_subset$'odor') <- c(levels(my_subset$'odor'),
                              "almond", "anise","creosote", "fishy","foul","musty","none","pungent","spicy")
my_subset$'odor'[my_subset$'odor' == "a"] <- "almond"
my_subset$'odor'[my_subset$'odor' == "l"] <- "anise"
my_subset$'odor'[my_subset$'odor' == "c"] <- "creosote"
my_subset$'odor'[my_subset$'odor' == "y"] <- "fishy"
my_subset$'odor'[my_subset$'odor' == "f"] <- "foul"
my_subset$'odor'[my_subset$'odor' == "m"] <- "musty"
my_subset$'odor'[my_subset$'odor' == "n"] <- "none"
my_subset$'odor'[my_subset$'odor' == "p"] <- "pungent"
my_subset$'odor'[my_subset$'odor' == "s"] <- "spicy"

levels(my_subset$'gill-size') <- c(levels(my_subset$'gill-size'), "broad", "narrow")
my_subset$'gill-size'[my_subset$'gill-size' == "b"] <- "broad"
my_subset$'gill-size'[my_subset$'gill-size' == "n"] <- "narrow"

levels(my_subset$'ring-type') <- c(levels(my_subset$'ring-type'),
                                   "cobwebby", "evanescent","flaring", "large","none","pendant","sheathing","zone")
my_subset$'ring-type'[my_subset$'ring-type' == "c"] <- "cobwebby"
my_subset$'ring-type'[my_subset$'ring-type' == "e"] <- "evanescent"
my_subset$'ring-type'[my_subset$'ring-type' == "f"] <- "flaring"
my_subset$'ring-type'[my_subset$'ring-type' == "l"] <- "large"
my_subset$'ring-type'[my_subset$'ring-type' == "n"] <- "none"
my_subset$'ring-type'[my_subset$'ring-type' == "p"] <- "pendant"
my_subset$'ring-type'[my_subset$'ring-type' == "s"] <- "sheathing"
my_subset$'ring-type'[my_subset$'ring-type' == "z"] <- "zone"

levels(my_subset$'habitat') <- c(levels(my_subset$'habitat'),
                              "grasses", "leaves","meadows", "paths","urban","waste","woods")
my_subset$'habitat'[my_subset$'habitat' == "g"] <- "grasses"
my_subset$'habitat'[my_subset$'habitat' == "l"] <- "leaves"
my_subset$'habitat'[my_subset$'habitat' == "m"] <- "meadows"
my_subset$'habitat'[my_subset$'habitat' == "p"] <- "paths"
my_subset$'habitat'[my_subset$'habitat' == "u"] <- "urban"
my_subset$'habitat'[my_subset$'habitat' == "w"] <- "waste"
my_subset$'habitat'[my_subset$'habitat' == "d"] <- "woods"

View(head(my_subset))





# http://jeromyanglim.blogspot.com/2010/05/abbreviations-of-r-commands-explained.html

