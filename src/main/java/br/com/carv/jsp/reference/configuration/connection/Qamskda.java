package br.com.carv.jsp.reference.configuration.connection;

import jakarta.persistence.EntityManager;

public class Qamskda {
	
	public static void main(String[] args) {
		PersistenceConfig config = new PersistenceConfig();
		EntityManager entityManager = config.getEntityManager();
		if(entityManager.isOpen()) {
			System.out.println("Deu certo rapaziada!");
		}
	}

}
