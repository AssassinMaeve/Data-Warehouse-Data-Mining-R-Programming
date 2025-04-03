df = data.frame(
    player = c("John", "Paul", "George", "Ringo"),
    position = c("Guitar", "Bass", "Guitar", "Drums"),
    points = c(100, 200, 150, 250),
    rebounds = c(10, 20, 15, 25),
    stringsAsFactors = FALSE
)

df

# Remove coloumns by name
df %>% select(-player, -position)

# Remove column named 'points'
df %>% select(-points)

# Remove column named 'points' or 'rebounds'
df %>% select(-one_of("points","rebounds"))
df %>% select(-c("points","rebounds"))

# Remove column in range
df %>% select(-(position:rebounds))

# Remove column that contains a phrase
# Remove columns that contain the word 'point'
df %>% select(-contains("point"))
