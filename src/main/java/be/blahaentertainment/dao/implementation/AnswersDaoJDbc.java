package be.blahaentertainment.dao.implementation;

import be.blahaentertainment.dao.AnswersDao;
import be.blahaentertainment.dao.DatabaseManager;

import javax.sql.DataSource;
import java.sql.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AnswersDaoJDbc implements AnswersDao {
    private final DataSource dataSource;

    public AnswersDaoJDbc() {
        this.dataSource = DatabaseManager.getDataSource();
    }

    public String answersToJson(Set<List<String>> answers){
        StringBuilder jsonBuilder = new StringBuilder();
        jsonBuilder.append("[");
        for (List<String> answer: answers) {
            jsonBuilder.append("{\"answerId\":");
            jsonBuilder.append("\"");
            jsonBuilder.append(answer.get(0));
            jsonBuilder.append("\"");
            jsonBuilder.append(",");
            jsonBuilder.append("{\"questionId\":");
            jsonBuilder.append("\"");
            jsonBuilder.append(answer.get(1));
            jsonBuilder.append("\"");
            jsonBuilder.append(",");
            jsonBuilder.append("\"rightAnswer\":");
            jsonBuilder.append(answer.get(2));
            jsonBuilder.append(",");
            jsonBuilder.append("\"answer\":");
            jsonBuilder.append(answer.get(3));
            jsonBuilder.append("},");
        }
        jsonBuilder.append("]");
        jsonBuilder.deleteCharAt(jsonBuilder.length()-2);
        return jsonBuilder.toString();

    }

    @Override
    public String getAnswersForQuestion(int questionId) {
        try(Connection connection = dataSource.getConnection()){
            String sql = "SELECT * FROM answer WHERE question_id = ?";
            PreparedStatement st = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            st.setInt(1,questionId);
            ResultSet rs = st.executeQuery();
            Set<List<String>>answers = new HashSet<>();
            while (rs.next()){
                answers.add(List.of(String.valueOf(rs.getInt(1)), String.valueOf(rs.getInt(2)),
                        String.valueOf(rs.getBoolean(3)), rs.getString(4)));
            }
            return answersToJson(answers);
        }catch (SQLException e){
            throw  new RuntimeException(e);
        }
    }
}
