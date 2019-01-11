package com.example.gaspersmerkolj.fest_checker;

import com.squareup.moshi.Json;

public class User {
    @Json(name="id")
    private int id;

    @Json(name="ime_Obiskovalca")
    private String ime_Obiskovalca ;


    @Json(name="priimek_Obiskovalca")
    private String Priimek_Obiskovalca ;


    @Json(name="uporabniško_Ime")
    private String uporabnisko_Ime;


    @Json(name="geslo")
    private String geslo;

    public int getId() {
        return id;
    }

    public String getGeslo() {
        return geslo;
    }

    public String getIme_Obiskovalca() {
        return ime_Obiskovalca;
    }

    public String getPriimek_Obiskovalca() {
        return Priimek_Obiskovalca;
    }

    public String getUporabnisko_Ime() {
        return uporabnisko_Ime;
    }

    public void setGeslo(String geslo) {
        this.geslo = geslo;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIme_Obiskovalca(String ime_Obiskovalca) {
        this.ime_Obiskovalca = ime_Obiskovalca;
    }

    public void setPriimek_Obiskovalca(String priimek_Obiskovalca) {
        Priimek_Obiskovalca = priimek_Obiskovalca;
    }

    public void setUporabnisko_Ime(String uporabnisko_Ime) {
        this.uporabnisko_Ime = uporabnisko_Ime;
    }

}
