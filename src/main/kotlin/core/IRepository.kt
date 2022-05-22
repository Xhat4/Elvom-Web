package core

import objects.user
import objects.userAuth

interface IRepository {

    fun saveUser(user:user);

    fun loginUser(user:userAuth): user?;

}