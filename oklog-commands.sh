#!/bin/bash

# Query a given store from 10 hours
oklog query -store 34.252.74.73 -from 12h

# Query a given store from 10 hours to the last minute
oklog query -store 34.252.74.73 -from 12h -to 1m

#Query a given store for a specified string
oklog query -store 34.252.74.73  -from 12h -q cliente1

#Query a given store for a specified string
oklog query -store 34.252.74.73 -from 12h -q "cliente1.*(404|500)" -regex

#Query a given store for a specified string
oklog query -store 34.252.74.73  -from 2017-03-16T08:22:53.108Z -q "cliente1.*(404|500)" -regex -ulid true

