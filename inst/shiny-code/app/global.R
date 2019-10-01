# Sourcing all R files from plot
#Jmisc::sourceAll(here::here("plots"))

#@export

# List dfs
data(iris)

#temp <- ls()[sapply(ls(), function(x) class(get(x))) == 'data.frame']
 temp <- Filter(function(x) is.data.frame(get(x)), ls())
