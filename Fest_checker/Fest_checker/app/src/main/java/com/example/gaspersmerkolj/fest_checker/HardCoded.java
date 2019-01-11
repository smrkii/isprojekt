package com.example.gaspersmerkolj.fest_checker;

import java.util.ArrayList;
import java.util.List;

public class HardCoded {
    List<User> uporabniki=new ArrayList<>();

    public static List<User> createUsers()
    {
        User neki1=new User();
        neki1.setId(22);
        neki1.setIme_Obiskovalca("admin");
        neki1.setPriimek_Obiskovalca("Kocar");
        neki1.setUporabnisko_Ime("admin");
        neki1.setGeslo("admin");

        User neki2=new User();
        neki1.setId(23);
        neki1.setIme_Obiskovalca("Jan");
        neki1.setPriimek_Obiskovalca("Koca");
        neki1.setUporabnisko_Ime("jC");
        neki1.setGeslo("jKoca");

        User neki3=new User();
        neki1.setId(23);
        neki1.setIme_Obiskovalca("Janko");
        neki1.setPriimek_Obiskovalca("Bet");
        neki1.setUporabnisko_Ime("jB");
        neki1.setGeslo("jBet");

        List<User> returnUser=new ArrayList<>();
        returnUser.add(neki1);
        returnUser.add(neki2);
        returnUser.add(neki3);

        return returnUser;
    }
}
