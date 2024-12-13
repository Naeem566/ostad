<?php

$questions = [
    ['question' => 'what is 5 + 4?', 'correct' => '9'],
    ['question' => 'what is BD full form?', 'correct' => 'Bangladesh'],
    ['question' => 'who wrote "Helmet"?', 'correct' => 'Shakespeare'],
];
$answers = [];
foreach($questions as $index=>$question){
    echo ($index+1) . ". " . $question['question'] . "\n";
    $answers[] = trim(readline("your answer: "));
}

// Evaluate Function 
function evaluateQuiz(array $questions, array $answers): int{
    $score = 0;
    foreach($questions as $index => $question){
        if($answers[$index] === $question['correct']){
            $score++;
        }
    }
    return $score;
}

// calculate score 

$score = evaluateQuiz($questions, $answers);

echo "\n You scored $score out of " . count($questions) . ".\n";
if($score === count($questions)) {
    echo "Excellent job! \n";
}elseif($score > 1){
    echo " Good Effort! \n";
}else{
    echo "Better luck next time! \n";
}