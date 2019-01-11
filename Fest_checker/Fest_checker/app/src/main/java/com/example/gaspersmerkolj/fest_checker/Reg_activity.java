package com.example.gaspersmerkolj.fest_checker;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.gaspersmerkolj.fest_checker.webservices.RestManagement;
import com.example.gaspersmerkolj.fest_checker.webservices.Storage;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Reg_activity extends AppCompatActivity {
    private EditText ime;
    private EditText priimek;
    private EditText uporabnik;
    private EditText geslo;
    private Button registracijski_gumb;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reg_activity);

        ime = (EditText) findViewById(R.id.ime_id);
        priimek = (EditText) findViewById((R.id.pri_id));
        uporabnik = (EditText) findViewById((R.id.Up_id2));
        geslo = (EditText) findViewById((R.id.G_id2));
        registracijski_gumb = (Button) findViewById((R.id.reg_button));


        registracijski_gumb.setOnClickListener(new View.OnClickListener() {


            @Override
            public void onClick(View v) {
                final User user = new User();
                user.setGeslo(geslo.getText().toString());
                user.setUporabnisko_Ime(uporabnik.getText().toString());
                user.setIme_Obiskovalca(ime.getText().toString());
                user.setPriimek_Obiskovalca(priimek.getText().toString());
                RestManagement.userLogin(user).enqueue(new Callback<ResponseBody>() {
                    @Override
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        if (response.code() == 200 || response.code() == 201) {
                            Log.d("Test_response","Registrated");
                            Toast.makeText(getApplicationContext(),"User Registrated", Toast.LENGTH_SHORT).show();
                            Storage myStorage = new Storage(getApplicationContext());
                            myStorage.storeUser(user);
                            openUserMain();
                            finish();
                        }


                    }

                    @Override
                    public void onFailure(Call<ResponseBody> call, Throwable t) {
                        Log.d("Test_response","Failed");
                    }


                });
            }


        });
    }
    public void openUserMain() {
        Intent odpri_Usr = new Intent(this, user_activity.class);
        startActivity(odpri_Usr);
    }
}
