package com.unu.poo2.model;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.unu.poo2.beans.Autor;

public class AutoresModel extends Conexion{
	CallableStatement cs;
	ResultSet rs;
	
	public List<Autor> listarAutores(){
		try {
			List<Autor> lista = new ArrayList<>();
			
			String sql = "call sp_listarAutor()";
			this.abrirConexion();
			cs = conexion.prepareCall(sql);
			
			rs = cs.executeQuery();	
			
			while (rs.next()) {
				Autor autor = new Autor();
				autor.setCodigoAutor(rs.getInt(1));
				autor.setNombreAutor(rs.getString(2));
				autor.setNacionalidad(rs.getString(3));
				
				lista.add(autor);

			}
			
			this.cerrarConexion();
			
			return lista;
		}catch (Exception e){
			this.cerrarConexion();
			return null;
		}
	}
	
	/*public List<Autor> listarAutores(){
		ArrayList<Autor> autores = new ArrayList<>();
		autores.add(new Autor(1, "Garcia Marquez", "Colombiana"));
		autores.add(new Autor(2, "Borgues", "Argentina"));
		autores.add(new Autor(3, "Allende", "Chilena"));
		
		return autores;
	}*/
	
	
}
