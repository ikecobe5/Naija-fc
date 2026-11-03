#!/bin/bash
# prints JS object mapping article numeral -> page, from the rendered PDF ($1)
cd "$(dirname "$0")"
pdftotext "$1" toc.txt
awk 'BEGIN{RS="\f"; printf "{"} 
{ n=split($0,L,"\n"); for(i=1;i<=n;i++){ t=L[i]; gsub(/^ +| +$/,"",t);
    if (t=="Preamble" && !seen["Preamble"]) { seen["Preamble"]=1; printf "\"Preamble\":%d,", NR }
    if (t ~ /(^|[^A-Z])ARTICLE$/) { for(j=i+1;j<=n;j++){ u=L[j]; gsub(/^ +| +$/,"",u); if(u!=""){ if (u ~ /^[IVXL]+$/ && !seen[u]) { seen[u]=1; printf "\"%s\":%d,", u, NR } break } } }
} } END{printf "}\n"}' toc.txt | sed 's/,}/}/'
