<?php 

$strings = ["Hello", "World", "PHP", "Programming"];

function countVowels($str) {
    $str = strtolower($str);


$vowels = ['a', 'e', 'i', 'o', 'u'];
$vowelCount = 0;

for($i = 0; $i < strlen($str); $i++) {
    if ( in_array($str[$i], $vowels)) {
        $vowelCount++;
    }
}
 return $vowelCount;
}

 foreach ($strings as $string) {
    $orgString = $string;
    $vowelCount = countVowels($string);
    $revString = strrev($string);

    echo " Original string : " . $orgString . ". Vowel Count : " . $vowelCount . ". Reversed String : " . $revString . ".\n";
 }