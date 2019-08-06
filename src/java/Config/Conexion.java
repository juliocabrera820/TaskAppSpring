
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author julio-cabrera
 */
public class Conexion {
    
    public DriverManagerDataSource conectar(){
        
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/People");
        dataSource.setUsername("root");
        dataSource.setPassword("12345");
        return dataSource;
    }
    
}
