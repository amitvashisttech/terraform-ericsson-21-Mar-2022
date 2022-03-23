locals { 
  default = timestamp()
}

output "time" { 
  value = local.default
}


locals { 
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp()) 
}

/*
locals { 
  file-1 = fileexists("${path.module}/hello.txt") 
}


locals { 
  file = file("${path.module}/hello.txt") 
}
*/

locals { 
  filecondition = fileexists("${path.module}/hello.txt") ? file("${path.module}/hello.txt") : local.default_content 
}


output "time-2" { 
  value = local.time
}

/*
output "file" { 
  value = local.file
}


output "file-1" { 
  value = local.file-1
}
*/

locals { 
  default_content = "No file found, please make sure file exists.!!"
} 

output "test" { 
  value = local.filecondition
}

