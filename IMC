package com.mycompany.mavenproject1;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class VentanaIMC extends JFrame {

    private JTextField txtPeso;
    private JTextField txtEstatura;

    public VentanaIMC() {
        setTitle("IMC HOSPITAL");
        setSize(300, 220);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLayout(null);

        JLabel lblTitulo = new JLabel("IMC HOSPITAL", SwingConstants.CENTER);
        lblTitulo.setFont(new Font("Arial", Font.ITALIC, 14));
        lblTitulo.setBounds(80, 10, 140, 25);
        add(lblTitulo);

        JLabel lblPeso = new JLabel("Peso en kilogramos:");
        lblPeso.setBounds(30, 40, 150, 20);
        add(lblPeso);

        txtPeso = new JTextField();
        txtPeso.setBounds(30, 60, 220, 25);
        add(txtPeso);

        JLabel lblEstatura = new JLabel("Estatura en metros:");
        lblEstatura.setBounds(30, 90, 150, 20);
        add(lblEstatura);

        txtEstatura = new JTextField();
        txtEstatura.setBounds(30, 110, 220, 25);
        add(txtEstatura);

        JButton btnAceptar = new JButton("Aceptar");
        btnAceptar.setBounds(180, 145, 80, 30);
        btnAceptar.setBackground(Color.DARK_GRAY);
        btnAceptar.setForeground(Color.WHITE);
        add(btnAceptar);

        btnAceptar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                mostrarResultado();
            }
        });
    }

    private void mostrarResultado() {
        try {
            float peso = Float.parseFloat(txtPeso.getText());
            float estatura = Float.parseFloat(txtEstatura.getText());

            Persona persona = new Persona();
            persona.setPeso(peso);
            persona.setEstatura(estatura);

            float imc = persona.calcularIMC();
            String clasificacion = persona.interpretarIMC();

            new VentanaResultado(imc, clasificacion).setVisible(true);
            this.dispose(); // cerrar esta ventana
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(this, "Ingresa datos válidos (números decimales).");
        }
    }

    public static void main(String[] args) {
        new VentanaIMC().setVisible(true);
    }
}
