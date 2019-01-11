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

import java.util.List;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MainActivity extends AppCompatActivity {
    private EditText uporabnik_id;
    private EditText geslo_id;
    private Button  prijavni_gumb;
    private Button reg_gumb;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        uporabnik_id=(EditText)findViewById(R.id.Up_id);
        geslo_id=(EditText)findViewById((R.id.G_id));
        prijavni_gumb=(Button)findViewById(R.id.Gumb_1);
        reg_gumb=(Button)findViewById((R.id.Gumb_2));

        reg_gumb.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
               openActivity();
            }
        });

        prijavni_gumb.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                 User user=new User();
                user.setGeslo(geslo_id.getText().toString());
                user.setUporabnisko_Ime(uporabnik_id.getText().toString());
                user.setIme_Obiskovalca("Default");
                user.setPriimek_Obiskovalca("Default");

                List<User> users=HardCoded.createUsers();

                for(User hardcodeduser: users)
                {
                    Log.d("test", hardcodeduser.getUporabnisko_Ime()+"neki");
                    if(hardcodeduser.getUporabnisko_Ime()!=null) {
                        if (hardcodeduser.getUporabnisko_Ime().equals(user.getUporabnisko_Ime())) {
                            user = hardcodeduser;
                            break;
                        }
                    }
                }


                final User passedUser = user;

                RestManagement.userLogin(passedUser).enqueue(new Callback<ResponseBody>() {
                    @Override
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {

                        if(response.code()==500)
                        {
                            Log.d("Test_response","Logged in");
                            Toast.makeText(getApplicationContext(),"User Logged in", Toast.LENGTH_SHORT).show();
                            Storage myStorage = new Storage(getApplicationContext());
                            myStorage.storeUser(passedUser);
                            openActivity2();
                            finish();
                        }
                        else
                            Log.d("Test_response",response.code()+"user_Created");
                    }

                    @Override
                    public void onFailure(Call<ResponseBody> call, Throwable t) {
                        Log.d("Test_response","Failed");
                    }
                });
               // openActivity2();
            }
        });

    }
    public void openActivity()
    {
        Intent intent=new Intent(this,Reg_activity.class);
        startActivity(intent);
    }
    public void openActivity2()
    {
        Intent intent=new Intent(this,user_activity.class);
        startActivity(intent);
    }
}
