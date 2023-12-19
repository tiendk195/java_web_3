/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author tiend
 */
public class TapChi {
    private String MaTC;
    private String TenTC;
    private String NhaXB;
    private int NamXB;

    public TapChi(String MaTC, String TenTC, String NhaXB, int NamXB) {
        this.MaTC = MaTC;
        this.TenTC = TenTC;
        this.NhaXB = NhaXB;
        this.NamXB = NamXB;
    }

    public TapChi() {
    }

    public String getMaTC() {
        return MaTC;
    }

    public void setMaTC(String MaTC) {
        this.MaTC = MaTC;
    }

    public String getTenTC() {
        return TenTC;
    }

    public void setTenTC(String TenTC) {
        this.TenTC = TenTC;
    }

    public String getNhaXB() {
        return NhaXB;
    }

    public void setNhaXB(String NhaXB) {
        this.NhaXB = NhaXB;
    }

    public int getNamXB() {
        return NamXB;
    }

    public void setNamXB(int NamXB) {
        this.NamXB = NamXB;
    }
    
}
