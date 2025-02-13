variable "new_variable" {
  type = string
  default = "test.txt"
}

variable "locations" {
    type = map(string)
    default = {
      "france" = "paris"
      "italy" = "rome"
      "nigeria" = "lagos"
      "ghana" = "accra"
      "jamaica" = "kingston"
      "usa" = "new york"
    }
}

variable "brands" {
    type = list(string)
    default = {
        nike = "football"
        adidas = "basketball"
        puma = "soccer"
        anta = "tennis"
        jordan = "basketball"
    }
}
