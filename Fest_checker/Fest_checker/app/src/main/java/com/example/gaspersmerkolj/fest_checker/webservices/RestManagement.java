package com.example.gaspersmerkolj.fest_checker.webservices;

import com.example.gaspersmerkolj.fest_checker.Ticket;
import com.example.gaspersmerkolj.fest_checker.User;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;

public class RestManagement {

    private static String baseURL = "https://festivalapi2.azurewebsites.net/api/";

    private static Retrofit myRetrofit = new Retrofit.Builder()
            .baseUrl(baseURL)
            .addConverterFactory(MoshiConverterFactory.create())
            .build();


    public static Call<ResponseBody> userLogin(User user)
    {
        return myRetrofit.create(Login.class).userLogin(user);
    }

    public static Call<ResponseBody> createTicket(Ticket ticket)
    {
        return myRetrofit.create(CreateTicket.class).createTicket(ticket);
    }




}
