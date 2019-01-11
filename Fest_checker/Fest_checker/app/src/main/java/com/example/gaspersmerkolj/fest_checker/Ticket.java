package com.example.gaspersmerkolj.fest_checker;

import com.squareup.moshi.Json;

public class Ticket {

    @Json(name = "id")
    private int id;

    @Json(name = "iD_Festivala")
    private int idFest;

    @Json(name = "iD_Obiskovalca")
    private int idUser;


    @Json(name = "velja_Od")
    private String veljaOd;

    @Json(name = "velja_Do")
    private String veljaDo;

    @Json(name = "cena")
    private int cena;

    public int getId() {
        return id;
    }

    public int getCena() {
        return cena;
    }

    public int getIdFest() {
        return idFest;
    }

    public int getIdUser() {
        return idUser;
    }

    public String getVeljaDo() {
        return veljaDo;
    }

    public String getVeljaOd() {
        return veljaOd;
    }


    public void setId(int id) {
        this.id = id;
    }

    public void setCena(int cena) {
        this.cena = cena;
    }

    public void setIdFest(int idFest) {
        this.idFest = idFest;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public void setVeljaDo(String veljaDo) {
        this.veljaDo = veljaDo;
    }

    public void setVeljaOd(String veljaOd) {
        this.veljaOd = veljaOd;
    }


}
