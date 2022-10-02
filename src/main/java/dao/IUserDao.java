package dao;

import model.User;

import java.util.List;

public interface IUserDao {
    void insertUser(User user);

    User selectUser(int id);

    List<User>selectAllUsers();

    List<User> searchUserByCountry(String inputcountry);

    List<User> sortByName();

    boolean deleteUser(int id);

    boolean updateUser(User user);
}
