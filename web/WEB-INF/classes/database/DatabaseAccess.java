package database;

import HourManager.DaysHours;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

    public ArrayList<DaysHours> getHours(){
        ArrayList<DaysHours> hours = new ArrayList<>();
        try(Connection conn = getConnection()){
            PreparedStatement statement = conn.prepareStatement("SELECT * FROM workedHours");
            ResultSet rs = statement.executeQuery();
            statement.close();
            while(rs.next()){
                hours.add(new DaysHours(rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5)));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }

        return null;
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
