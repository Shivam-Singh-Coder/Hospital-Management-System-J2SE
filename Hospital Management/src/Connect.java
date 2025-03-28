import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Connect {
    public static Connection ConnectDB() {
        Connection con = null;
        try {
            // Load the MySQL JDBC driver
//            Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.jdbc.Driver");

            // Establish the connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hp_mgmt_db", "hp_mgmt_db", "hp_mgmt_db");
//            jdbc:mysql://localhost:3306/hp_mgmt_db?zeroDateTimeBehavior=convertToNull [hp_mgmt_db on Default schema]

            // Check if the connection is valid (optional timeout of 5 seconds)
            if (con != null && con.isValid(5)) {
                System.out.println("Connection established successfully!");
            } else {
                System.out.println("Failed to establish connection.");
                JOptionPane.showMessageDialog(null, "Failed to establish connection.");
                return null;
            }

            return con;
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
            return null;
        }
    }
}
//public class Connect {
//    public static Connection ConnectDB() throws SQLException {
//        DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
//        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HPMS","HPMS");
//        return con;
//    }
//}
class Mainlo {
    public static void main(String[] args) throws SQLException {
        Connection con = Connect.ConnectDB();

        // Optionally, perform some database operations if the connection is successful
        if (con != null) {
            // Example operation, ensure you close the connection after usage
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}