import {getRandomQuestion} from "./main.js";
import {getAnswersForQuestion} from "./main.js";

let QUESTIONBOX = document.getElementById("question_box");
let ANSWERBOX = document.getElementById("answer_box");



function refresh() {
    getRandomQuestion(function (data){
        console.log(data);
    })

}

refresh();
