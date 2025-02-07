#create a vector called names that contains the names of all the members of team-histidine
names <- c("Muniru Elijah Taiwo", "Elias Korchi Meziani", "Toluwalase Taiwo", "Neo Mokgadi Mametja", "Samuel Ogunleye", "Stella Adediwura")

# create a vector called slack usernames that contains the slack username of all the members of team-hisitidine
slack_usernames <- c("MuniruElijah", "Elias", "Lase", "NeoMametja", "Sproff", "Stella")

# create a vector called emails that contains the emails of all the the member of team-hisitdine
emails <- c("muniruelijah@gmail.com", "elias.k.meziani@gmail.com", "princesstoluwalase@gmail.com", "nmametja@gmail.com", "hellodevsproff@gmail.com", "ifeoluwastella02@gmail.com")

#create a vector called emails that contains the hobbies that contains the hobbies of all the members of team-histidine 
hobbies <- c("Reading", "Videogames, History, Life Sciences, Gym, and Sleeping", "Watching movies and sleeping", " Outdoor activities, Gym and Sleeping", "Music", "Sleeping, reading, watching movies and surfing the Internet")

# create a vector called countries that contains the country of origin of all the members of team-histidine 
countries <- c("Nigeria", "Spain", "Nigeria", "South Africa", "Nigeria", "Nigeria")

# create a vector called discipline that contains the course of study of all the members of team-histidine 
discipline <- c("Anatomy", "Pharmacy", "Microbiology", "Plant Microbiology", "Biochemistry", "Microbiology")

# create a vector called programming langagues that contains the preferred programming languages of members of team-histidine 
programming_languages <- c("R", "Python", "Python", "Python", "Python", "Python")

# Create a data frame to store the data. Each row will contain information
# about one person, while the column will contain each field. 

Team_data <- data.frame(
  Name = names,
  Slack_Username = slack_usernames,
  Email = emails,
  Hobby = hobbies,
  Country = countries,
  Discipline = discipline,
  Preffered_programming_language = programming_languages
)

print("Meet team-histidine members")
cat(Team_data[1,1], "slack username is", Team_data[1,2], "and he can be reached through this email address:", Team_data[1,3],",", "\n",
      Team_data[1,1], " hobby is ", Team_data[1,4],",", "\n" ,
      Team_data[1,1], " resides in", Team_data[1,5],",", "\n",
      Team_data[1,1], "discipline is ", Team_data[1,6],",","\n",
      Team_data[1,1], " preferred programming language is ", Team_data[1,7], "programming language")
# this section 
cat(Team_data[2,1], "slack username is", Team_data[2,2], "and he can be reached through this email address:", Team_data[2,3],",", "\n",
    Team_data[2,1], " hobbies are", Team_data[2,4],",", "\n" ,
    Team_data[2,1], " resides in", Team_data[2,5],",", "\n",
    Team_data[2,1], "discipline is ", Team_data[2,6],",","\n",
    Team_data[2,1], " preferred programming language is ", Team_data[2,7])
# this
cat(Team_data[3,1], "slack username is", Team_data[3,2], "and can be reached through this email address:", Team_data[3,3],",", "\n",
    Team_data[3,1], " hobbies are ", Team_data[3,4],",", "\n" ,
    Team_data[3,1], " resides in", Team_data[3,5],",", "\n",
    Team_data[3,1], "discipline is ", Team_data[3,6],",","\n",
    Team_data[3,1], " preferred programming language is ", Team_data[3,7])
#this 
cat(Team_data[4,1], "slack username is", Team_data[4,2], "and can be reached through this email address:", Team_data[4,3],",", "\n",
    Team_data[4,1], " hobbies are ", Team_data[4,4],",", "\n" ,
    Team_data[4,1], " resides in", Team_data[4,5],",", "\n",
    Team_data[4,1], "discipline is ", Team_data[4,6],",","\n",
    Team_data[4,1], " preferred programming language is ", Team_data[4,7])
#thsis
cat(Team_data[5,1], "slack username is", Team_data[5,2], "and can be reached through this email address:", Team_data[5,3],",", "\n",
    Team_data[5,1], " hobbies are ", Team_data[5,4],",", "\n" ,
    Team_data[5,1], " resides in", Team_data[5,5],",", "\n",
    Team_data[5,1], "discipline is ", Team_data[5,6],",","\n",
    Team_data[5,1], " preferred programming language is ", Team_data[5,7])
#this 
cat(Team_data[6,1], "slack username is", Team_data[6,2], "and can be reached through this email address:", Team_data[6,3],",", "\n",
    Team_data[6,1], " hobbies are ", Team_data[6,4],",", "\n" ,
    Team_data[6,1], " resides in", Team_data[6,5],",", "\n",
    Team_data[6,1], "discipline is ", Team_data[6,6],",","\n",
    Team_data[6,1], " preferred programming language is ", Team_data[6,7])

print("Thanks for Visiting")
