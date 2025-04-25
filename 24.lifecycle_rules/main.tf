resource "local_file" "foo1" {
  content  = "foo1111111111!"
  filename = "${path.module}/foo1.txt"
  lifecycle {
    create_before_destroy = true                    //Here it will first create the resource.. thne will destroy it
  }
}

resource "local_file" "foo2" {
  content  = "foo! 222222222222222"
  filename = "${path.module}/foo2.txt"
  lifecycle {
    prevent_destroy = true                      //Here it will not be able to make any changes to the file... as it can't destroy the original file
  }
}

resource "local_file" "foo3" {
  content  = "foo! 3333333334365454645"
  filename = "${path.module}/foo3.txt"
  lifecycle {
    ignore_changes = [content]                     //Here it will ignore if there will be any changes related to content
  }
}