import {getRandomQuestionWithAnswers} from "./main.js";

let QUESTIONBOX = document.querySelector("#question");
let ANSWERBOX = document.querySelectorAll(".answers");


function refresh() {
    getRandomQuestionWithAnswers(function (question){
        resetColor();
        QUESTIONBOX.innerHTML = question.question;
    }, function (answers){
        let i = 0;
        for (let answer of ANSWERBOX){
            answer.innerHTML = answers[i].answer;
            answer.setAttribute("data-right", answers[i].rightAnswer)
            answer.addEventListener('click' ,event => {answerListener(event);});
            i++;
        }
    })
}

function resetColor() {
    for (let answer of ANSWERBOX){
        answer.setAttribute("style", "background-color:yellow");
    }

}

function answerListener(event) {
    event.target.setAttribute("style", "background-color:orange");
    sleep(2000).then(() => {
        if (event.target.getAttribute("data-right") === "true"){
            event.target.setAttribute("style", "background-color:green");
        } else {
            event.target.setAttribute("style", "background-color:red");
            for (let answer of ANSWERBOX){
                if (answer.getAttribute("data-right") === "true"){
                    answer.setAttribute("style", "background-color:green");
                }
            }
        }
    });
}

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

//

refresh();