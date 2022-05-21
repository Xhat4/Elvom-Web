package core

import objects.user

interface IRepository {

    fun saveUser(user: user);

}