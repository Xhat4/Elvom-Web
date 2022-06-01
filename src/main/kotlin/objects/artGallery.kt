package objects

class artGallery(
    private var id: Int,
    private var art: String,
    private var title: String,
    private var description: String,
    private var authorName: String,
){

    fun getId(): Int{
        return id;
    }

    fun getArt(): String{
        return art;
    }

    fun getTitle(): String{
        return title;
    }

    fun getDescription(): String{
        return description;
    }

    fun getAuthorName(): String{
        return authorName;
    }
}