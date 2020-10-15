let currentQuestionId;

//it calls a fetch to get a random question, and returns with data
//which is a Json containing the question,questionId,hint
export function getRandomQuestionWithAnswers(callback1,callback2){

    fetch("/question")
        .then((response) => response.json())
        .then((data) => {
            console.log("id: "+data.questionId);
            callback1(data)
            fetch(`/answers?questionId=${data.questionId}`)
                .then((response) => response.json())
                .then((data)=> callback2(data))
        })
}




