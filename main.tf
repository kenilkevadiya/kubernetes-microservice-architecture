resource "google_container_cluster" "k8s-cluster" {
  name               = "k8s-cluster"       
  location           = "us-central1-c"         
  initial_node_count = 1                       

  node_config {
    machine_type   = "e2-standard-8"            
    disk_size_gb   = 10                      
    disk_type      = "pd-standard"             
    image_type     = "COS_CONTAINERD"           
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false        
    }
  }
}
