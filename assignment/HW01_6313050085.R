# Numeric Vectors
number <- c(10.4, 5.6, 3.1, 6.4, 21.7)

#average
mean(number)

#sd
sd(number)

#sum
sum(number)

#median
median(number)

#variance
variable.names(number)

# List of Marvel movies (Order by Marvel Phase released)
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")

# List of released year of Marvel movies
years <- c(2008,2008,2010,2011,2011,2012,2013,2013,2014,2014,2015,2015,2016,2016,
           2017,2017,2017,2017,2018,2018,2019,2019,2019,2021,2021,2021,2021)

marvel_movies <- data.frame(names,years)

#The numbers of movies
length (names)
print("The number of movies is 27.")

#Finding the 19th movies name
marvel_movies <- data.frame(names, years)
marvel_movies
print("the 19th movies name is Avengers: Infinity War")

#Which year is most released movies
print("the year most released movies is 2017 and 2021")







