package database;

import HourManager.DaysHours;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

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

    public List<DaysHours> getHours(){
        try(Connection conn = getConnection()){
            PreparedStatement statement = conn.prepareStatement("SELECT * FROM workedHours");
            ResultSet rs = statement.executeQuery();
            statement.close();
            while(rs.next()){

            }
        }catch(SQLException e){
            e.printStackTrace();
        }
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
