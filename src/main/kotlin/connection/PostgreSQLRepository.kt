package connection

import core.IRepository
import java.sql.DriverManager

class PostgreSQLRepository : IRepository {

    val jdbcUrl = "jdbc:postgresql://localhost:5432/example";
    val connection = DriverManager.getConnection(jdbcUrl, "postgres", "postgres");

    override fun save(){

    }

    fun load(){

    }

}