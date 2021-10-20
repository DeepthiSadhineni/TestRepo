variable "domainnames" {
  type = list
  default = ["rishi.com", "gopika.com"]
}

/*variable "Zoneids" {
  type = list
  default = ["Z04404022GXE53ORHYKH3", "Z04400932D1AZFWZ7HABO"]
}*/

 /*variable "Zoneids" {
  type = map
  default = {
    "rishi.com" = "Z04404022GXE53ORHYKH3"
    "gopika.com" = "Z04400932D1AZFWZ7HABO"
  }
}*/

/* variable "domains" {
  type = list(string)
  default = [
    "Hesvika",
    "Laasya"
  ]
} */

variable "keyvault_secret"{
  type = map
  default = {
    name1 = "value1"
    name2 = "value2"
    name3 = "value3"
  }
}
