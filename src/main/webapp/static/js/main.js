let currentQuestionId = 1;

function getAnswersForQuestion (data, callback){
    fetch(`/answers?questionId=${currentQuestionId}`)
        .then((response) => response.json())
        .then((data)=> callback(data))


}

//it calls a fetch to get a random question, and returns with data
//which is a Json containing the question,questionId,hint
function getRandomQuestion(callback){

    fetch("/question")
        .then((response) => response.json())
        .then((data) => {
            currentQuestionId = parseInt(data.questionId);
            callback(data)
        })
}




