package com.mycompany.mavenproject1;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class VentanaResultado extends JFrame {

    public VentanaResultado(float imc, String clasificacion) {
        setTitle("IMC HOSPITAL");
        setSize(300, 200);
        setLocationRelativeTo(null);
        setLayout(null);

        JLabel lblTitulo = new JLabel("IMC HOSPITAL", SwingConstants.CENTER);
        lblTitulo.setFont(new Font("Arial", Font.ITALIC, 14));
        lblTitulo.setBounds(80, 10, 140, 25);
        add(lblTitulo);

        JLabel lblIMC = new JLabel("Su IMC es:");
        lblIMC.setBounds(30, 40, 100, 20);
        add(lblIMC);

        JTextField txtIMC = new JTextField(String.format("%.2f", imc));
        txtIMC.setBounds(30, 60, 220, 25);
        txtIMC.setEditable(false);
        txtIMC.setBackground(new Color(230, 230, 230));
        add(txtIMC);

        JLabel lblResultado = new JLabel("La persona tiene " + clasificacion);
        lblResultado.setForeground(Color.GREEN.darker());
        lblResultado.setBounds(30, 90, 250, 25);
        add(lblResultado);

        JButton btnCerrar = new JButton("Cerrar");
        btnCerrar.setBounds(180, 125, 80, 30);
        btnCerrar.setBackground(Color.DARK_GRAY);
        btnCerrar.setForeground(Color.WHITE);
        add(btnCerrar);

        btnCerrar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                dispose(); // cerrar esta ventana
            }
        });
    }
}
