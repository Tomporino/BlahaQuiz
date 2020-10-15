package be.blahaentertainment.dao;

import be.blahaentertainment.dao.implementation.AnswersDaoJDbc;
import be.blahaentertainment.dao.implementation.QuestionsDaoJDbc;
import org.postgresql.ds.PGSimpleDataSource;

import javax.sql.DataSource;
import java.sql.SQLException;


public class DatabaseManager {


        private static DatabaseManager databaseManager = null;
        private QuestionsDao questionsDao;
        private AnswersDao answersDao;


        public DatabaseManager()  {

        }

        public static DatabaseManager getInstance(){
            if (databaseManager == null){
                databaseManager = new DatabaseManager();

            }
            return databaseManager;
        }

        public void setup() throws SQLException {
            DataSource dataSource = connect();
            questionsDao = new QuestionsDaoJDbc(dataSource);
            answersDao = new AnswersDaoJDbc(dataSource);

        }



        public DataSource connect() throws SQLException {
            PGSimpleDataSource dataSource = new PGSimpleDataSource();
            String dbName = System.getenv("DB_NAME");
            String userName = System.getenv("USER_NAME");
            String password = System.getenv("PASSWORD");

            dataSource.setDatabaseName(dbName);
            dataSource.setUser(userName);
            dataSource.setPassword(password);


            System.out.println("Trying to connect..");
            dataSource.getConnection().close();
            System.out.println("Connection OK");

            return dataSource;
        }
    }


