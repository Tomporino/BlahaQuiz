import {getRandomQuestionWithAnswers} from "./main.js";

let QUESTIONBOX = document.getElementById("question_box");
let ANSWERBOX = document.getElementById("answer_box");



function refresh() {
    getRandomQuestionWithAnswers(function (data){
        console.log(data);
    }, function (data){
        for (let json of data){
            console.log(json);
        }
    })


}

refresh();
