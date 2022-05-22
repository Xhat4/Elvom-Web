package objects

import java.util.Date
import java.util.StringJoiner

class user(
    private var id: Int = 0,
    private var name: String,
    private var surnames: String,
    private var username: String,
    private var dni: String,
    private var email: String,
    private var image: String?,
    private var birthDate: Date?,
    private var artist: Boolean,
    private var admin: Boolean,
    private var password: ByteArray?
) {

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
