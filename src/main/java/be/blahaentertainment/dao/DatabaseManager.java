package be.blahaentertainment.dao;

import org.postgresql.ds.PGSimpleDataSource;

import javax.sql.DataSource;


public class DatabaseManager {

    private static DataSource dataSource = null;

    private DatabaseManager(){
    }

    private DataSource connect() {
        PGSimpleDataSource dataSource = new PGSimpleDataSource();
        dataSource.setDatabaseName(System.getenv("DB_NAME"));
        dataSource.setUser(System.getenv("USER_NAME"));
        dataSource.setPassword(System.getenv("PASSWORD"));

        return dataSource;
    }

    public static DataSource getDataSource(){
        if (dataSource == null){
            dataSource = new DatabaseManager().connect();
        }
        return dataSource;
    }
}
