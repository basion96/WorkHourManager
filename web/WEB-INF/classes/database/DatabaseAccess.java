package database;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseAccess {

    protected Connection getConnection() {
        DataSource datasource;
        Connection connection = null;
        try {
            datasource = (DataSource) new InitialContext().lookup("java:/comp/env/houseDB");
            connection = datasource.getConnection();
        } catch (NamingException | SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }

    public void submitHours(String date, String startTime, String finishTime, double lunch){
        try(Connection conn = getConnection()){
            PreparedStatement statement = conn.prepareStatement("INSERT INTO workedHours(date, startTime, finishTime, lunch) Values (?,?,?,?)");
            statement.setString(1, date);
            statement.setString(2, startTime);
            statement.setString(3, finishTime);
            statement.setDouble(4, lunch);
            statement.execute();
            statement.close();
        } catch (SQLException e){
            e.printStackTrace();
        }
    }
}
