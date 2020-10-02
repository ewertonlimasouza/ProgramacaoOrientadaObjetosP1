/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

Deve haver uma classe chamada "Disciplina" com atributos para nome, 
ementa, ciclo (semestre: 1, 2, 3, 4, 5 ou 6) e nota. Inclua um construtor parametrizado 
(sem nota) e os getters e setters. Inclua também um método chamado "getList()" 
que retorne um ArrayList com as disciplinas em que você está matriculado(a) neste semestre.
(25 pontos)
 */
package br.edu.fatecpg.poo.p1;

/**
 *
 * @author Home
 */
public class Disciplina {
    
    private String nomeAluno;
    private int ra;
    private int qtd;
    private String nome;
    private String ementa;
    private int ciclo;
    private double nota;

    public Disciplina(String nomeAluno, int ra, int qtd, String nome, String ementa, int ciclo, double nota) {
        this.nomeAluno = nomeAluno;
        this.ra = ra;
        this.qtd = qtd;
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
    }
    
 public String getNomeAluno() {
        return nomeAluno;
    }

    public void setNomeAluno(String nomeAluno) {
        this.nomeAluno = nomeAluno;
    }

    public int getRa() {
        return ra;
    }

    public void setRa(int ra) {
        this.ra = ra;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCiclo() {
        if(ciclo<1)
            this.ciclo = 1;
        else if(ciclo>6)
            this.ciclo = 6;
        else 
            this.ciclo = ciclo;
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public double getNota() {
        if(nota<0)
            this.nota = 0;
        else if(nota>10)
            this.nota = 10;
        else 
            this.nota = nota;
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
    
    
    
}
