package sn.esp.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DAOFactory {

	private String url;
	private String username;
	private String password;

	public DAOFactory(String url, String username, String password) {
		this.url = url;
		this.username = username;
		this.password = password;
	}

	public static DAOFactory getInstance() throws DAOConfigurationException {

		String url;
		String username;
		String password;
		String driver;

		Properties properties = new Properties();
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		InputStream fichierProperties = classLoader.getResourceAsStream("/sn/esp/dao/dao.properties");

		if (fichierProperties == null) {
			throw new DAOConfigurationException("Fichier properties introuvable.");
		}

		try {
			properties.load(fichierProperties);
			url = properties.getProperty("url");
			driver = properties.getProperty("driver");
			username = properties.getProperty("nomutilisateur");
			password = properties.getProperty("motdepasse");

		} catch (IOException e) {
			throw new DAOConfigurationException("Echec du chargement du fichier properties", e);
		}

		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			throw new DAOConfigurationException("Echec du chargement du driver.", e);
		}

		return new DAOFactory(url, username, password);

	}

	public Connection getConnexion() throws SQLException {
		return DriverManager.getConnection(url, username, password);
	}

	public CompteUtilisateurDao getCompteUtilisateurDao() {
		return new CompteUtilisateurDaoImpl(this);
	}

}
