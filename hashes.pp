$hash_var = {
   'el1' => '1',
   'el2' => '2',
   'el3' => '3'
}

$hash_var.each |$key, $val| {
  notify { $key:
    message => $val,
  }  
}
