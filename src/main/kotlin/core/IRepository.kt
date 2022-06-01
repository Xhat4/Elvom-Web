package core

import objects.*

interface IRepository {

    fun saveUser(user:user);

    fun loginUser(user:userAuth): user?;

    fun modifyUser(user:user): Int;

    fun getTags(): ArrayList<String>;

    fun sendRequest(portfolio: portfolio, user: user): Int;

    fun uploadArt(art: art, user: user): Int;

    fun getArtist(): ArrayList<user>;

    fun getArt(): ArrayList<artGallery>;

    fun getRequest(): ArrayList<request>;

}