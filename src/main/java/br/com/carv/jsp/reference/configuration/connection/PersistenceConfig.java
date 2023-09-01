package br.com.carv.jsp.reference.configuration.connection;

import java.util.logging.Logger;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class PersistenceConfig {

	private final Logger logger = Logger.getLogger(PersistenceConfig.class.getName());
	private EntityManagerFactory entityManagerFactory = null;
	
	public PersistenceConfig() {
		init();
	}
	
	private void init() {
		try {
			entityManagerFactory = Persistence.createEntityManagerFactory("jsp-intro");
		}catch (Exception e) {
			logger.info("Entity Manager Factory cannot be created.");
			e.printStackTrace();
			
		}
	}
	
	public EntityManager getEntityManager() {
		return entityManagerFactory.createEntityManager();
	}
}
