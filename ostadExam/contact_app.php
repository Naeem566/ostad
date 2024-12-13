<?php
$contacts = [];
// add contact 
function addContact(array &$contacts, string $name, string $email, string $phone): void {
    $contacts[] = ['name' =>$name, 'email' =>$email, 'phone' => $phone];
}

// Display Contacts

function displayContacts(array $contacts): void{
    if(empty($contacts)){
        echo "No contacts available.\n";
    }else{
        foreach($contacts as $contact){
            echo "name: {$contact['name']}, Email: {$contact['email']}, Phone: {$contact['phone']}\n";
        }
    }
}

while(true){
    echo "\n Contact Management Menu\n";
    echo "1. Add Contact\n2. View Contacts\n3. Exit\n";

    $choice = (int)readline("Choice an option: ");

    if($choice === 1){
         $name = readline("Enter your name: ");
         $email = readline("Enter your email: ");
         $phone = readline("Enter your Phone no.: ");
         addContact($contacts, $name, $email, $phone);
         echo "$name added successfully.\n";
    }elseif($choice === 2){
        displayContacts($contacts);
    }elseif($choice === 3){
        echo " Exiting...\n";
        break;
    }else{
        echo "Invalid choice. Please try again.\n";
    }
}