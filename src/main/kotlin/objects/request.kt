package objects

class request (
    private var id: Int,
    private var portfolio: String,
    private var important: String,
    private var idUser: Int,
    ){

    fun getId(): Int{
        return id;
    }

    fun getPortfolio(): String{
        return portfolio;
    }

    fun getImportant(): String{
        return important;
    }

    fun getIdUser(): Int{
        return idUser;
    }
}