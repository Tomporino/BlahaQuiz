import {getRandomQuestionWithAnswers} from "./main.js";

let QUESTIONBOX = document.querySelector("#question");
let ANSWERBOX = document.querySelectorAll(".answers");




function refresh() {
    getRandomQuestionWithAnswers(function (question){
        QUESTIONBOX.innerHTML = question.question;
    }, function (answers){
        let i = 0;
        for (let answer of ANSWERBOX){
            answer.innerHTML = answers[i].answer;
            answer.setAttribute("data-right", answers[i].rightAnswer)
            answer.addEventListener('click' ,e => console.log(answer));
            i++;
        }

    })
}

refresh();
