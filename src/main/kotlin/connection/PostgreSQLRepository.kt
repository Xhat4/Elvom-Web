package connection

import core.IRepository
import objects.*
import java.sql.Date
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
        var query : PreparedStatement = connection.prepareStatement("insert into users(name,surnames,username,dni,email,password,birth_date) values (?,?,?,?,?,?,?)");

        query.setString(1,user.getName());
        query.setString(2,user.getSurnames());
        query.setString(3,user.getUsername());
        query.setString(4,user.getDni());
        query.setString(5,user.getEmail());
        query.setBytes(6,user.getPassword());
        query.setDate(7,Date.valueOf(user.getBirthDate()));
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
                query.resultSet.getString("name"),
                query.resultSet.getString("surnames"),
                query.resultSet.getString("username"),
                query.resultSet.getString("dni"),
                query.resultSet.getString("email"),
                query.resultSet.getString("image"),
                query.resultSet.getDate("birth_date").toLocalDate(),
                query.resultSet.getBoolean("artist"),
                query.resultSet.getBoolean("admin"),
                null
            );

            return userLoaded;
        }else{
            return null;
        }
    }

    override fun modifyUser(user: user): Int {

        var query : PreparedStatement = connection.prepareStatement("update users set username = ?,name = ?,surnames = ?,dni = ?,email = ?, image = ?,birth_date = ?,password = ? where id = ?");

        if(user.getPassword() == null){
            query = connection.prepareStatement("update users set username = ?,name = ?,surnames = ?,dni = ?,email = ?, image = ?,birth_date = ? where id = ?");
        }

        query.setString(1, user.getUsername());
        query.setString(2,user.getName());
        query.setString(3,user.getSurnames());
        query.setString(4,user.getDni());
        query.setString(5,user.getEmail());
        query.setString(6,user.getImage());
        query.setDate(7, Date.valueOf(user.getBirthDate()));

        if(user.getPassword() == null){
            query.setInt(8, user.getId());
        }else{
            query.setBytes(8, user.getPassword());
            query.setInt(9, user.getId());
        }

        var result = query.execute();

        if(result == false){
            return 0;
        }else{
            return 1;
        }

    }

    override fun getTags(): ArrayList<String>{
        var query : PreparedStatement = connection.prepareStatement("select name from tags");

        query.execute();
        var array : ArrayList<String> = ArrayList();

        while(query.resultSet.next()){
            array.add(query.resultSet.getString("name"));
        }

        return array;
    }

    override fun sendRequest(portfolio: portfolio, user: user): Int{

        var query : PreparedStatement = connection.prepareStatement("insert into request (portfolio,important,iduser) values (?,?,?)");

        query.setString(1,portfolio.getPortfolio());
        query.setString(2,portfolio.getImportant());
        query.setInt(3,user.getId());

        var result = query.execute();

        if(result == false){
            return 0;
        }else{
            return 1;
        }

    }

    override fun uploadArt(art: art, user: user): Int{
        var query : PreparedStatement = connection.prepareStatement("insert into art (art,name,id_artist,description) values (?,?,?,?)");

        query.setString(1,art.getArt());
        query.setString(2,art.getTitle());
        query.setInt(3,user.getId());
        query.setString(4,art.getDescription());

        var result = query.execute();

        if(result == false){
            return 0;
        }else{
            return 1;
        }
    }

    override fun getArtist(): ArrayList<user>{
        var query : PreparedStatement = connection.prepareStatement("select * from users where artist = 'true'");

        query.execute();
        var array : ArrayList<user> = ArrayList();

        while(query.resultSet.next()){
            array.add(user(
                query.resultSet.getInt("id"),
                query.resultSet.getString("name"),
                query.resultSet.getString("surnames"),
                query.resultSet.getString("username"),
                query.resultSet.getString("dni"),
                query.resultSet.getString("email"),
                query.resultSet.getString("image"),
                query.resultSet.getDate("birth_date").toLocalDate(),
                query.resultSet.getBoolean("artist"),
                query.resultSet.getBoolean("admin"),
                null
            ));
        }

        return array;
    }

    override fun getArt(): ArrayList<artGallery>{
        var query : PreparedStatement = connection.prepareStatement("select a.id, a.art, a.name, a.description, u.username from art a, users u where a.id_artist = u.id");

        query.execute();
        var array : ArrayList<artGallery> = ArrayList();

        while(query.resultSet.next()){
            array.add(
                artGallery(
                query.resultSet.getInt("id"),
                query.resultSet.getString("art"),
                query.resultSet.getString("name"),
                query.resultSet.getString("description"),
                query.resultSet.getString("username"),
            )
            );
        }

        return array;
    }

    override fun getRequest(): ArrayList<request>{
        var query : PreparedStatement = connection.prepareStatement("select * from request");

        query.execute();
        var array : ArrayList<request> = ArrayList();

        while(query.resultSet.next()){
            array.add(request(
                query.resultSet.getInt("id"),
                query.resultSet.getString("portfolio"),
                query.resultSet.getString("important"),
                query.resultSet.getInt("iduser"),
            ));
        }

        return array;
    }

}