#!/bin/bash

welcome(){
    echo "Welcome to my script, this script installs and uninstalls my key"
    echo "THIS ONLY AFFECTS THE LOGGED IN USER"
}

break(){
    echo ""
    echo ""
}

options(){
    echo "Select one of the following options"
    echo ""
    echo "1| Install Key"
    echo "2| Delete Key"
    read option
}

installkey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDQrvZpoBXAovtNnXhSxAO664UEZUb2ssv0eFJjHMyRtVuMZ+gQz38NIQ8h1G7Hr1zZ56uG8zGeOwKp9/sSXorT7pSbiGMlYR3LHtpKuCHLOR303Dm5tqJ0MzBNsFY5YYlZStV/NKv3xtYPOQsq1iERZowVifIixynQ0SZ5QnJGpW0JEqWt69lEHM1CT6UrskkmVfUZj8Ev4Bap5c1qqL19dk7LpyvrOepv4spskmfyGZpqSp6m/rZCjz0SZTvaaTjgAQ3uY0ESfVrz3gKHajMI54lCKO55CHJQ6O1KnDtZLpWjsLy42ZXT+vu9Z+z0NzDLn60Hf3jktw01mbVfBoy+PuqxNLiUsn3AxlaEID/KWzSzOSp/l+uXOZ0RC2G6UarWj7uFLmvoesobxO32JjqQR6qKVU7fE/8jBYPISo0hhPzsbzY8SIJBtF5zvM+B7gabaHUFQjz1V8yUuREIe6uiPKcOh95ESsTIXKABPK1Gy5hyRgrmisJpyl91hwXOUvCaH7oH7jd3CyGOohzhCGqJjA2uCsSGiCamo8suYsKD6Hy0NduJKrxbrzD2SR8Mvc9FDF9DEmNFTA7vzYwkw1jgSHrS00F0saD/Ec6m19OjiwHVGFkyZC8LmG63bxq/wMm2AbaGVBRigF9iCvEXLkeM3YJtrXaaTEBWOPKQolKGtQ== josh severo@LAPTOP-4L1IE86R" ".ssh/authorized_keys" -s; then
    echo "ERROR: Key has already been installed"
    else
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDQrvZpoBXAovtNnXhSxAO664UEZUb2ssv0eFJjHMyRtVuMZ+gQz38NIQ8h1G7Hr1zZ56uG8zGeOwKp9/sSXorT7pSbiGMlYR3LHtpKuCHLOR303Dm5tqJ0MzBNsFY5YYlZStV/NKv3xtYPOQsq1iERZowVifIixynQ0SZ5QnJGpW0JEqWt69lEHM1CT6UrskkmVfUZj8Ev4Bap5c1qqL19dk7LpyvrOepv4spskmfyGZpqSp6m/rZCjz0SZTvaaTjgAQ3uY0ESfVrz3gKHajMI54lCKO55CHJQ6O1KnDtZLpWjsLy42ZXT+vu9Z+z0NzDLn60Hf3jktw01mbVfBoy+PuqxNLiUsn3AxlaEID/KWzSzOSp/l+uXOZ0RC2G6UarWj7uFLmvoesobxO32JjqQR6qKVU7fE/8jBYPISo0hhPzsbzY8SIJBtF5zvM+B7gabaHUFQjz1V8yUuREIe6uiPKcOh95ESsTIXKABPK1Gy5hyRgrmisJpyl91hwXOUvCaH7oH7jd3CyGOohzhCGqJjA2uCsSGiCamo8suYsKD6Hy0NduJKrxbrzD2SR8Mvc9FDF9DEmNFTA7vzYwkw1jgSHrS00F0saD/Ec6m19OjiwHVGFkyZC8LmG63bxq/wMm2AbaGVBRigF9iCvEXLkeM3YJtrXaaTEBWOPKQolKGtQ== josh severo@LAPTOP-4L1IE86R" >> ~/.ssh/authorized_keys
    echo "The key has been installed"
    fi
}

removekey(){
    cd 
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDQrvZpoBXAovtNnXhSxAO664UEZUb2ssv0eFJjHMyRtVuMZ+gQz38NIQ8h1G7Hr1zZ56uG8zGeOwKp9/sSXorT7pSbiGMlYR3LHtpKuCHLOR303Dm5tqJ0MzBNsFY5YYlZStV/NKv3xtYPOQsq1iERZowVifIixynQ0SZ5QnJGpW0JEqWt69lEHM1CT6UrskkmVfUZj8Ev4Bap5c1qqL19dk7LpyvrOepv4spskmfyGZpqSp6m/rZCjz0SZTvaaTjgAQ3uY0ESfVrz3gKHajMI54lCKO55CHJQ6O1KnDtZLpWjsLy42ZXT+vu9Z+z0NzDLn60Hf3jktw01mbVfBoy+PuqxNLiUsn3AxlaEID/KWzSzOSp/l+uXOZ0RC2G6UarWj7uFLmvoesobxO32JjqQR6qKVU7fE/8jBYPISo0hhPzsbzY8SIJBtF5zvM+B7gabaHUFQjz1V8yUuREIe6uiPKcOh95ESsTIXKABPK1Gy5hyRgrmisJpyl91hwXOUvCaH7oH7jd3CyGOohzhCGqJjA2uCsSGiCamo8suYsKD6Hy0NduJKrxbrzD2SR8Mvc9FDF9DEmNFTA7vzYwkw1jgSHrS00F0saD/Ec6m19OjiwHVGFkyZC8LmG63bxq/wMm2AbaGVBRigF9iCvEXLkeM3YJtrXaaTEBWOPKQolKGtQ== josh severo@LAPTOP-4L1IE86R" ".ssh/authorized_keys" -s; then
    sed -if '/josh severo@LAPTOP-4L1IE86R/d' .ssh/authorized_keys
    echo "Key successfully removed"
    else
    echo "ERROR: Key not installed"
    fi
}

welcome
break
options
case $option in
    1) installkey
    ;;
    2) removekey
    ;;
    *) echo "Your selection is invalid"
    options
esac
