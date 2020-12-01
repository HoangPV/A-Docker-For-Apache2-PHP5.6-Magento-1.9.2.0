#!/bin/bash

if [  -z "$1"  ]
	then 
		docker-compose exec -uadmin web bash
	else
		docker-compose exec -u $@ web bash
fi