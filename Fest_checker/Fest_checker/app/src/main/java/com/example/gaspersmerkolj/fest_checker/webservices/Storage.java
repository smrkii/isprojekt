package com.example.gaspersmerkolj.fest_checker.webservices;



import android.content.Context;
import android.content.SharedPreferences;

import com.example.gaspersmerkolj.fest_checker.User;
import com.google.gson.Gson;

public class Storage {

    private String prefsName = "myprefrences";
    private SharedPreferences myPrefs;
    private SharedPreferences.Editor myEditor;
    private Gson myGson=new Gson();

    public Storage(Context context) {
        this.myPrefs = context.getSharedPreferences(prefsName, Context.MODE_PRIVATE);
        this.myEditor = myPrefs.edit();
    }
    public void storeUser(User value) {
        String json=myGson.toJson(value);
        myEditor.putString("user",json);
        myEditor.commit();
    }


    public User getUserr() {
        String json=myPrefs.getString("user", "deafult");
        return myGson.fromJson(json,User.class);
    }
}