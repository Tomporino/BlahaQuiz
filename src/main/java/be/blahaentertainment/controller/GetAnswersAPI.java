package be.blahaentertainment.controller;

import be.blahaentertainment.dao.AnswersDao;
import be.blahaentertainment.dao.implementation.AnswersDaoJDbc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/answer")
public class GetAnswersAPI extends HttpServlet {
    AnswersDao answersDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int questionId = Integer.parseInt(req.getParameter("questionId"));
        answersDao = new AnswersDaoJDbc();
        String jsonString = answersDao.getAnswersForQuestion(questionId);
        resp.setContentType("text/html");
        resp.getWriter().println(jsonString);

    }
}

