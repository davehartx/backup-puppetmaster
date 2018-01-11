define show_message (
  String  $message,
) {
  notify { $title :
     message => $message ,
  }
}


$message = {
   'message1' => { 'message' => 'this is message 1'},
   'message2' => { 'message' => 'this is message 2'},
}


create_resources(show_message, $message)
