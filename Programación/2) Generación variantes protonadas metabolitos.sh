#!/bin/bash
python3 gypsum_dl/run_gypsum_dl.py -s TFM/Metabolitos/Metabolitos.sdf -o TFM/Metabolitos/ --num_processors -1 -m 5 --min_ph 6.4 --max_ph 8.5 --pka_precision 1.0 -t 7


#Se agrupan las versiones sdf en un solo archivo
