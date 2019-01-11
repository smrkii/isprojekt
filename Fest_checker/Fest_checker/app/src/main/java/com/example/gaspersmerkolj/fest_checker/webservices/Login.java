package com.example.gaspersmerkolj.fest_checker.webservices;

import com.example.gaspersmerkolj.fest_checker.User;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;


public interface Login {



    @POST("Obiskovalecs/")
    Call<ResponseBody> userLogin(@Body User user);



}
