resource "local_file" "samplefile" {
  filename = "${path.module}/random.txt"
  content  = "Adding the random content just to show the graph feature"
}


//to use the graph feature.. you need to run this command
//terraform graph --type=apply | dot -Tsvg > graph.svg
// if you want to have a circular dependency information.. then you can use this command 
//terraform graph --type=apply -draw-cycles | dot -Tsvg > graph.svg    == this will give the edges in a colour if there will be any circular dependency