package objects

import java.util.StringJoiner

class art (
    private var art: String,
    private var title: String,
    private var description: String,
){
    fun getArt(): String{
        return art;
    }

    fun getTitle(): String{
        return title;
    }

    fun getDescription(): String{
        return description;
    }
}