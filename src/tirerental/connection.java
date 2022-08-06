
package tirerental;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class connection {
 Connection con; 
 PreparedStatement st;
 ResultSet rs;
    public connection() {
     try {
         con  =DriverManager.getConnection("jdbc:derby://localhost:1527/tirerental","car","123");
     } catch (SQLException ex) {
         JOptionPane.showMessageDialog(null,ex.getMessage(),"Error",JOptionPane.ERROR_MESSAGE);     
     }
          
         
    }
    public void close(){
     try {
         if(rs!=null)
        rs.close();
          if(st!=null)
         st.close();
           if(con!=null)
          con.close();
     } catch (SQLException ex) {
         JOptionPane.showMessageDialog(null,ex.getMessage(),"Error",JOptionPane.ERROR);     
     }
    }
    
}
