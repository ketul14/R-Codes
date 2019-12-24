###########################################################################################
# SQL Database connection
# Establish a secured connection and execute SQL query
###########################################################################################
#' @title
#'
#' @description
#'
#' @param
#'
#' @return
#'
#' @examples
#'
#' @export


require(mssqlR)
require(RODBC)

# Function to connect and execute sql query
getSQLQueryResult <- function(database, query){
    # Establish a secure connection
    connection = paste("Driver={SQL Server Native Client 11.0};
                        server= <Server Host IP>;
                        database=", database, ";
                        trusted_connection=yes;", sep = "")
    conn <- odbcDriverConnect(connection=connection)
    # Execute a query
    df <- sqlQuery(conn, query = query)

    # Close connection
    odbcClose(conn)

    # return data
    return(df)
}

###########################################################################################
# Ends
###########################################################################################

