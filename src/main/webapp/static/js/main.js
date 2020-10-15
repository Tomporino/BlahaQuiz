let currentQuestionId;

//it calls a fetch to get a random question, and returns with data
//which is a Json containing the question,questionId,hint
export function getRandomQuestionWithAnswers(callback1,callback2){

    fetch("/question")
        .then((response) => response.json())
        .then((question) => {
            callback1(question)
            fetch(`/answers?questionId=${question.questionId}`)
                .then((response) => response.json())
                .then((answers)=> callback2(answers))
        })
}






