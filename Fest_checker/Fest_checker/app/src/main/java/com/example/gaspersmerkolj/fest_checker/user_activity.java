package com.example.gaspersmerkolj.fest_checker;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class user_activity extends AppCompatActivity {

    private Button reserve;
    private Button look;
    private Button log_out;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_activity);

        reserve=(Button)findViewById(R.id.Rezervacija_id);
        look=(Button)findViewById(R.id.Pregle_id);
        log_out=(Button)findViewById(R.id.Odjava_id);

        log_out.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pojdi_na_zacetek();
            }
        });
        reserve.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                newAcc();
            }
        });
    }
    public void pojdi_na_zacetek()
    {
        Intent zacetek=new Intent(this,MainActivity.class);
        startActivity(zacetek);
    }
    public void newAcc()
    {
        Intent zacetek=new Intent(this,Rezervacija_activity.class);
        startActivity(zacetek);
    }

}
