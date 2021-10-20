resource "aws_route53_record" "rishi_cloud_dmarc" {

  /*for_each = {
    for k, v in var.keyvault_secret : k => v
    if var.keyvault_secret != {}
  }*/


  for_each = toset( ["Todd", "James", "Alice"] )

  zone_id = "Z04404022GXE53ORHYKH3"
  name    = each.key
  type    = "TXT"
  ttl     = "60"
  records = ["v=DMARC1; p=reject;"]
}



/*
resource "aws_route53_record" "Gopika_cloud_dmarc" {
  zone_id = "Z04400932D1AZFWZ7HABO"
  name    = "_dmarc"
  type    = "TXT"
  ttl     = "60"
  records = ["v=DMARC1; p=reject;"]
} */
/* Example for map datatype for Zoneids variable
resource "aws_route53_record" "cloud_dmarc_records" {
  for_each = var.Zoneids
  zone_id = each.value
  name    = "_dmarc"
  type    = "TXT"
  ttl     = "60"
  records = ["v=DMARC1; p=reject;"]
} */

/* Example of using List datatype for Zoneids variable*/
 /* resource "aws_route53_record" "cloud_dmarc_records" {
  for_each = toset(var.Zoneids)
  zone_id = each.value
  name    = "_dmarc"
  type    = "TXT"
  ttl     = "60"
  records = ["v=DMARC1; p=reject;"]
} */


/* Example of creating 2 Zones and DMARC records for each zone */

/*resource "aws_route53_record" "dmarc" {
  for_each  = toset(var.domains)
  zone_id   = aws_route53_zone.RishiCompany[each.value].zone_id
  name      = "_dmarc.${each.value}.ca"
  records   = ["v=DMARC1; p=reject; fo=1; ri=3600;"]
  type      = "TXT"
  ttl       = 300
}

resource "aws_route53_zone" "RishiCompany" {
  for_each  = toset(var.domains)
  name      = "${each.value}.com"
} */
