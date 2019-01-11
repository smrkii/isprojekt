package com.example.gaspersmerkolj.fest_checker.webservices;

import com.example.gaspersmerkolj.fest_checker.Ticket;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

public interface CreateTicket {

    @POST("Vstopnicas")
    Call<ResponseBody> createTicket(@Body Ticket ticket);
}
