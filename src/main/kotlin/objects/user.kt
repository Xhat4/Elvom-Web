package objects

import java.util.StringJoiner

class user{
    private lateinit var name : String;
    private lateinit var surnames : String;
    private lateinit var username : String;
    private lateinit var dni : String;
    private lateinit var email : String;
    private var password : ByteArray? = null;

    fun setUser(name:String, surnames:String, username:String, dni:String, email:String, password:ByteArray?){
        this.name = name;
        this.surnames = surnames;
        this.username = username;
        this.dni = dni;
        this.email = email;
        this.password = password;
    }

    fun getName(): String{
        return name;
    }

    fun getSurnames(): String{
        return surnames;
    }

    fun getUsername(): String{
        return username;
    }

    fun getDni(): String{
        return dni;
    }

    fun getEmail(): String{
        return email;
    }

    fun getPassword(): ByteArray?{
        return password;
    }
}
