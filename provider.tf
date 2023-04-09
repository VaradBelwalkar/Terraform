#Full updation coming soon...
terraform {
    required_providers {
      local = {
        source =  "hashicorp/local"
      }
      random  = {
        source =  "hashicorp/random"
      }
      aws = {
        source  = "hashicorp/aws"
      }
    }
}

#Simply creates a resource of local_file type, with name some_name
resource "local_file" "some_name"{
    filename = "/home/<username>/<somewhere>"
    file_permission = 0700

}


resource "random_pet" "somepetname"{
    prefix = "Mr."
    length = "1"
}

resource "random_integer" "someinteger"{

}


resource "random_string" "somerandomstring"{

}


#some info about lifecycle of a resource 


resource some_resource "some_name"{

######
#

#
#
        lifecycle {
            # gives ability to first create resource before destroying original
            # never try provision first time using this unless you know what you are doing
          create_before_destroy = true
          # prevents destroying the original provisioned resource if somehow terraform tries to destroy it 
          # in account for updating it on the basis of immutable infrastructure concept 
          prevent_destroy = true
        }


}