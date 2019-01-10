#!/bin/bash
##
#alvaro frias perez
#descripcion= script que se encarga de buscar con ldap un dominio
##

host="Localhost"
dominio="dc=alvaro,dc=es"
base=""
#ldapsearch -x -H ldap://localhost -b "dc=alvaro,dc=es"
ldapsearch -x -H ldap://$host -b $dominio

# modifico la base de busqueda
base="ou=users,"
echo "--------------- objetos de $base$dominio----"
ldapsearch -x -H ldap://$host -b $base$dominio
