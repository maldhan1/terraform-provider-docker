#!/bin/bash
printf '{"a":"b"}' | docker config create foo -
# prints the id 
08c26c477474478d971139f750984775a7f019dbe8a2e7f09d66a187c009e66d