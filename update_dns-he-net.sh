#!/bin/bash

## VARIABLE
DOMAIN="_DYNAMIC_DOMAIN_NAME_TO_UPDATE_"
PASSWORD="_PASSWORD_GENERATE_FOR_THIS_DNS_RECORD_"
IP=`dig +short myip.opendns.com @resolver1.opendns.com`

## AUTODETECT
curl -k -4 "https://$DOMAIN:$PASSWORD@dyn.dns.he.net/nic/update?hostname=$DOMAIN"               #IPv4
#curl -k -6 "https://$DOMAIN:$PASSWORD@dyn.dns.he.net/nic/update?hostname=$DOMAIN"              #IPv6

## SPECIFY YOUR IP
#curl -k -4 "https://$DOMAIN:$PASSWORD@dyn.dns.he.net/nic/update?hostname=$DOMAIN&myip=$IP"     #IPv4
#curl -k -6 "https://$DOMAIN:$PASSWORD@dyn.dns.he.net/nic/update?hostname=$DOMAIN&myip=$IP"     #IPv6
