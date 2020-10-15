package be.blahaentertainment.dao.implementation;

import be.blahaentertainment.dao.DatabaseManager;
import be.blahaentertainment.dao.QuestionsDao;

import javax.sql.DataSource;
import java.sql.*;

public class QuestionsDaoJDbc implements QuestionsDao {
    private final DataSource dataSource;

    public QuestionsDaoJDbc() {
        this.dataSource = DatabaseManager.getDataSource();
    }

    public String createJson(int questionId, String question, String hint){
        StringBuilder jsonBuilder = new StringBuilder();
            jsonBuilder.append("{\"questionId\":");
            jsonBuilder.append("\"");
            jsonBuilder.append(questionId);
            jsonBuilder.append("\"");
            jsonBuilder.append(",");
            jsonBuilder.append("\"question\":");
            jsonBuilder.append("\"");
            jsonBuilder.append(question);
            jsonBuilder.append("\"");
            //jsonBuilder.append(",");
            //jsonBuilder.append("\"hint\":");
            //jsonBuilder.append(hint);
            jsonBuilder.append("}");

        return jsonBuilder.toString();

    }

    @Override
    public String selectRandomQuestion() {
        try (Connection connection = dataSource.getConnection()){
            String sql = "select * from question offset random() * (select count(*) from question) limit 1 ";
            PreparedStatement st = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
            int id = rs.getInt(1);
            String question = rs.getString(2);
            String hint = rs.getString(3);

            return createJson(id, question,hint);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

}
