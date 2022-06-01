package objects

import java.time.LocalDate
import java.util.Date

class user(
    private var id: Int,
    private var name: String,
    private var surnames: String,
    private var username: String,
    private var dni: String,
    private var email: String,
    private var image: String?,
    private var birthDate: LocalDate,
    private var artist: Boolean,
    private var admin: Boolean,
    private var password: ByteArray?
) {

    fun getId(): Int{
        return id;
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

    fun getImage(): String?{
        return image;
    }

    fun getBirthDate() :LocalDate?{
        return birthDate;
    }

    fun getPassword(): ByteArray?{
        return password;
    }

    fun getArtist(): Boolean{
        return artist;
    }

    fun getAdmin(): Boolean{
        return admin;
    }

    fun setImage(image: String){
        this.image = image;
    }
}
