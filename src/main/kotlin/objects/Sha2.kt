package objects

import java.security.MessageDigest;

class Sha2 (){
    fun main(text: String): ByteArray? {
        val bytes = text.toByteArray();
        val md = MessageDigest.getInstance("SHA-256");
        val digest = md.digest(bytes);
        return digest;
    }
}