package objects

class portfolio(
    private var portfolio: String,
    private var important: String,
    ){

    fun getPortfolio(): String{
        return portfolio;
    }

    fun getImportant(): String{
        return important;
    }
}