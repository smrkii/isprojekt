package com.example.gaspersmerkolj.fest_checker;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import com.example.gaspersmerkolj.fest_checker.webservices.RestManagement;
import com.example.gaspersmerkolj.fest_checker.webservices.Storage;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Rezervacija_activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rezervacija_activity);
        final ListView listview=findViewById(R.id.list_view_id);
        final String[] idArray={"3","4","6"};

        final ArrayAdapter adapter = new ArrayAdapter(this,
               android.R.layout.simple_expandable_list_item_1, idArray);
        listview.setAdapter(adapter);

        final EditText datyumOd = findViewById(R.id.datum_od_id);
        final EditText datyumDo = findViewById(R.id.datum_do);

        datyumDo.setText("2019-01-09T00:23:17.270Z");
        datyumOd.setText("2019-01-09T00:23:17.270Z");

        Button potrdi = findViewById(R.id.potrdi_id);

        int currentPos = 0;





        potrdi.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Ticket ticket = new Ticket();
                Storage myStorage = new Storage(getApplicationContext());
                User  user = myStorage.getUserr();

                ticket.setCena(5);
                ticket.setIdFest(Integer.parseInt(idArray[listview.getFirstVisiblePosition()]));
                ticket.setIdUser(user.getId());
                ticket.setVeljaDo(datyumDo.getText().toString());
                ticket.setVeljaOd(datyumOd.getText().toString());

                RestManagement.createTicket(ticket).enqueue(new Callback<ResponseBody>() {
                    @Override
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {

                        if (response.code() == 201 || response.code() == 200) {
                            Log.d("test", "ticket created");
                            Toast.makeText(getApplicationContext(), "Vstopnica rezervirana", Toast.LENGTH_SHORT).show();
                            finish();

                        }
                        else
                            Log.d("test", "code: " + response.code());
                    }

                    @Override
                    public void onFailure(Call<ResponseBody> call, Throwable t) {

                    }
                });
            }
        });



    }
}
