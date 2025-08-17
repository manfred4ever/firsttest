
provider "aws" {
    region = "cc"

}

 

variable "company" {
    type = list(string)
    default = [ "aramco" ]
    description = "I need to be back to ChinaWorld"
    
  
}

variable "aramco-object" {
    type = object({
      name = "obj1"
      floor = string

    })
    default = {
      floor = "43"
      name = "aramco"
    }
}