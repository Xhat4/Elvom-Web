package connection

import core.IRepository
import objects.user
import objects.userAuth
import java.sql.DriverManager
import java.sql.PreparedStatement


class PostgreSQLRepository : IRepository {

    val jdbcUrl = "jdbc:postgresql://localhost:5432/postgres";
    val connection : java.sql.Connection;

    init {
        Class.forName("org.postgresql.Driver");
        connection = DriverManager.getConnection(jdbcUrl, "postgres", "S0m7D");
    }

    override fun saveUser(user:user) {
        var query : PreparedStatement = connection.prepareStatement("insert into users(name,surnames,username,dni,email,password) values (?,?,?,?,?,?)");

        query.setString(1,user.getName());
        query.setString(2,user.getSurnames());
        query.setString(3,user.getUsername());
        query.setString(4,user.getDni());
        query.setString(5,user.getEmail());
        query.setBytes(6,user.getPassword());
        query.execute();
    }

    override fun loginUser(user: userAuth): user? {
        var query : PreparedStatement = connection.prepareStatement("select * from users where username = ? and password = ?");

        query.setString(1, user.username);
        query.setBytes(2, user.password);
        var result = query.execute();

        if(query.resultSet.next()){
            var userLoaded : user = user(
                query.resultSet.getInt("id"),
                query.resultSet.getString("username"),
                query.resultSet.getString("name"),
                query.resultSet.getString("surnames"),
                query.resultSet.getString("dni"),
                query.resultSet.getString("email"),
                query.resultSet.getString("image"),
                query.resultSet.getDate("birth_date"),
                query.resultSet.getBoolean("artist"),
                query.resultSet.getBoolean("admin"),
                null
            );

            return userLoaded;
        }else{
            return null;
        }
    }

}