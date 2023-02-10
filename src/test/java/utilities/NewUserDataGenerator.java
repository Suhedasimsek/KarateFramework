package utilities;

import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;

public class NewUserDataGenerator {

public static Map<String, Object>UserDataGenerator(){//sınıf adıyla metodu çağırabileyim diye stataik oluşturdum
    Faker faker=new Faker();
    String name =faker.name().username();
    String email =name+ "@test.com";
    String password ="Test123456!";
    String about="Great job";
    String terms="3";

    Map<String, Object> newUser= new HashMap<>();
        newUser.put("name", name);
        newUser.put("email", email);
        newUser.put("password", password);
        newUser.put("about", about);
        newUser.put("terms", terms);

    return newUser;


}
}
