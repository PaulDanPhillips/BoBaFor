#! /bin/bash

find . -name "BalancedArbitrayPredictor_*.txt" | while read f; do mv "${f}" "${f/BalancedArbitrayPredictor_/Weakest_}"; done
