package be.blahaentertainment.controller;

import be.blahaentertainment.dao.QuestionsDao;
import be.blahaentertainment.dao.implementation.QuestionsDaoJDbc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/question")
public class GetQuestionAPI extends HttpServlet {
    QuestionsDao questionsDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        questionsDao = new QuestionsDaoJDbc();
        String jsonString = questionsDao.selectRandomQuestion();
        resp.setContentType("text/html");
        resp.getWriter().println(jsonString);
    }
}
