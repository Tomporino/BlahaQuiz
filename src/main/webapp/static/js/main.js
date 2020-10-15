let currentQuestionId = 1;


function getAnswersForQuestion (data){



}

//it calls a fetch to get a random question, and returns with data
//which is a Json containing the question,questionId,hint
function getRandomQuestion(data){
    currentQuestionId = parseInt(data.questionId);
}


fetch(`/answers?questionId=${currentQuestionId}`)
    .then((response) => response.json())
    .then((data)=> getAnswersForQuestion(data))

fetch("/question")
    .then((response) => response.json())
    .then((data) => getRandomQuestion(data))