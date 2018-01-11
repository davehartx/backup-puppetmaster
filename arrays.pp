$array_var =['a', 'b', 'c' ]

$array_var.each |$value| {
notify {$value:
  message => $value,
  }
}

