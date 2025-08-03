package com.mycompany.mavenproject1;

public class Persona {
    private float peso;
    private float estatura;

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public void setEstatura(float estatura) {
        this.estatura = estatura;
    }

    public float calcularIMC() {
        return peso / (estatura * estatura);
    }

    public String interpretarIMC() {
        float imc = calcularIMC();
        if (imc < 18.5f) {
            return "bajo peso";
        } else if (imc < 25f) {
            return "peso normal";
        } else if (imc < 30f) {
            return "sobrepeso";
        } else if (imc < 35f) {
            return "obesidad tipo I";
        } else if (imc < 40f) {
            return "obesidad tipo II";
        } else {
            return "obesidad tipo III";
        }
    }
}
