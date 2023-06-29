<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Professor Darrell Payne
 Bellevue University
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Records MySQL 5</title>
    </head>
    <body>
        <h1>Insert Records MySQL 5</h1>
        
        <%
            java.sql.Connection con = null;
            java.sql.Statement stmt = null;
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/baseball_01?";
                
                con = java.sql.DriverManager.getConnection(url + "user=student1&password=pass");                
                stmt = con.createStatement();
            }
            catch(Exception e){
                out.println("<h1>Error connection to database.</h1>");
            }
            
            try{
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 1903, 'Pirates', 'Pittsburgh')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Giants', 'New York', 1905, 'Athletics', 'Philadelphia')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('White Sox', 'Chicago', 1906, 'Cubs', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cubs', 'Chicago', 1907, 'Tigers', 'Detroit')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cubs', 'Chicago', 1908, 'Tigers', 'Detroit')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Pirates', 'Pittsburgh', 1909, 'Tigers', 'Detroit')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Philadelphia', 1910, 'Cubs', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Philadelphia', 1911, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 1912, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Philadelphia', 1913, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Braves', 'Boston', 1914, 'Athletics', 'Philadelphia')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 1915, 'Phillies', 'Philadelphia')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 1916, 'Robins', 'Brooklyn')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('White Sox', 'Chicago', 1917, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 1918, 'Cubs', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Reds', 'Cincinnati', 1919, 'White Sox', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Indians', 'Cleveland', 1920, 'Robins', 'Brooklyn')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Giants', 'New York', 1921, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Giants', 'New York', 1922, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1923, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Senators', 'Washington', 1924, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Pirates', 'Pittsburgh', 1925, 'Nationals', 'Wasnington')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1926, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1927, 'Pirates', 'Pittsburgh')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1928, 'Cardinals', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Philadelphia', 1929, 'Cubs', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Philadelphia', 1930, 'Cardinals', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1931, 'Athletics', 'Philadelphia')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1932, 'Cubs', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Giants', 'New York', 1933, 'Nationals', 'Wasnington')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1934, 'Tigers', 'Detroit')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Tigers', 'Detroit', 1935, 'Cubs', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1936, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1937, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1938, 'Cubs', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1939, 'Reds', 'Cincinnati')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Reds', 'Cincinnati', 1940, 'Tigers', 'Detroit')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1941, 'Dodgers', 'Brooklyn')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1942, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1943, 'Cardinals', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1944, 'Browns', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Tigers', 'Detroit', 1945, 'Cubs', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1946, 'Red Sox', 'Boston')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1947, 'Dodgers', 'Brooklyn')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Indians', 'Cleveland', 1948, 'Braves', 'Boston')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1949, 'Dodgers', 'Brooklyn')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1950, 'Phillies', 'Philadelphia')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1951, 'Giants', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1952, 'Dodgers', 'Brooklyn')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1953, 'Dodgers', 'Brooklyn')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Giants', 'New York', 1954, 'Indians', 'Cleveland')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Dodgers', 'Brooklyn', 1955, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1956, 'Dodgers', 'Brooklyn')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Braves', 'Milwaukee', 1957, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1958, 'Braves', 'Milwaukee')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Dodgers', 'Los Angeles', 1959, 'White Sox', 'Chicago')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Pirates', 'Pittsburgh', 1960, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1961, 'Reds', 'Cincinnati')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1962, 'Giants', 'San Francisco')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Dodgers', 'Los Angeles', 1963, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1964, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Dodgers', 'Los Angeles', 1965, 'Twins', 'Minnesota')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Orioles', 'Baltimore', 1966, 'Dodgers', 'Los Angeles')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1967, 'Red Sox', 'Boston')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Tigers', 'Detroit', 1968, 'Cardinals', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Mets', 'New York', 1969, 'Orioles', 'Baltimore')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Orioles', 'Baltimore', 1970, 'Reds', 'Cincinnati')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Pirates', 'Pittsburgh', 1971, 'Orioles', 'Baltimore')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Oakland', 1972, 'Reds', 'Cincinnati')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Oakland', 1973, 'Mets', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Oakland', 1974, 'Dodgers', 'Los Angeles')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Reds', 'Cincinnati', 1975, 'Red Sox', 'Boston')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Reds', 'Cincinnati', 1976, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1977, 'Dodgers', 'Los Angeles')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1978, 'Dodgers', 'Los Angeles')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Pirates', 'Pittsburgh', 1979, 'Orioles', 'Baltimore')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Phillies', 'Philadelphia', 1980, 'Royals', 'Kansas City')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Dodgers', 'Los Angeles', 1981, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 1982, 'Brewers', 'Milwaukee')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Orioles', 'Baltimore', 1983, 'Phillies', 'Philadelphia')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Tigers', 'Detroit', 1984, 'Padres', 'San Diego')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Royals', 'Kansas City', 1985, 'Cardinals', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Mets', 'New York', 1986, 'Red Sox', 'Boston')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Twins', 'Minnesota', 1987, 'Cardinals', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Dodgers', 'Los Angeles', 1988, 'Athletics', 'Oakland')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Athletics', 'Oakland', 1989, 'Giants', 'San Francisco')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Reds', 'Cincinnati', 1990, 'Athletics', 'Oakland')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Twins', 'Minnesota', 1991, 'Braves', 'Atlanta')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Blue Jays', 'Toronto', 1992, 'Braves', 'Atlanta')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Blue Jays', 'Toronto', 1993, 'Phillies', 'Philadelphia')");

                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Braves', 'Atlanta', 1995, 'Indians', 'Cleveland')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1996, 'Braves', 'Atlanta')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Marlins', 'Florida', 1997, 'Indians', 'Cleveland')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1998, 'Padres', 'San Diego')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 1999, 'Braves', 'Atlanta')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 2000, 'Mets', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Diamondbacks', 'Arizona', 2001, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Angels', 'Anaheim', 2002, 'Giants', 'San Francisco')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Marlins', 'Florida', 2003, 'Yankees', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 2004, 'Cardinals', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('White Sox', 'Chicago', 2005, 'Astros', 'Houston')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 2006, 'Tigers', 'Detroit')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 2007, 'Rockies', 'Colorado')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Phillies', 'Philadelphia', 2008, 'Rays', 'Tampa Bay')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Yankees', 'New York', 2009, 'Phillies', 'Philadelphia')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Giants', 'San Francisco', 2010, 'Rangers', 'Texas')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cardinals', 'St. Louis', 2011, 'Rangers', 'Texas')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Giants', 'San Francisco', 2012, 'Tigers', 'Detroit')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 2013, 'Cardinals', 'St. Louis')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Giants', 'San Francisco', 2014, 'Royals', 'Kansas City')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Royals', 'Kansas City', 2015, 'Mets', 'New York')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Cubs', 'Chicago', 2016, 'Indians', 'Cleveland')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Astros', 'Houston', 2017, 'Dodgers', 'Los Angeles')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Red Sox', 'Boston', 2018, 'Dodgers', 'Los Angeles')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Nationals', 'Washington', 2019, 'Astros', 'Houston')");
                stmt.executeUpdate("INSERT INTO Wins_WK_06_MySQL(Team, City, Year_T, LoserTeam, LoserCity)VALUES('Dodgers', 'Los Angeles', 2020, 'Rays', 'Tampa Bay')");

                stmt.executeUpdate("COMMIT");
                
                out.println("<b>Data Inserted</b><br />");
            }
            catch(java.sql.SQLException e){
                out.println("<b>Error inserting data</b><br />");
            }
            
            try{
                stmt.close();
                con.close();
                out.println("<b>Database connections closed</b><br />");
            }
            catch(java.sql.SQLException e){
                out.println("<b>Connection close failed</b><br />");
            }
        %>       
        
    </body>
</html>
