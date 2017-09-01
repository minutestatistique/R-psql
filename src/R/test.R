require(RPostgreSQL)

# loads the PostgreSQL driver
drv <- dbDriver("PostgreSQL")
# creates a connection to the postgres database
# note that "con" will be used later in each connection to the database
con <- dbConnect(drv, dbname = "postgres",
                 host = "localhost", port = 5432,
                 user = "postgres", password = "vagrant")

# check for the cartable
dbExistsTable(con, "playground")
# TRUE

dt <- dbGetQuery(con, "SELECT * from playground")
