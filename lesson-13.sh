# commands covered in this lesson

wget # used for downloading files over HTTP, HTTPS, and FTP protocols

curl # used also for downloading files, but also for crafting and creating requests over a variety of 

traceroute # used to find the network paths used to get to a site

# the beloved 'supercurl' function :)
function supercurl() {
    curl -s -w '\nLookup time:\t%{time_namelookup}\nConnect time:\t%{time_connect}\nAppCon time:\t%{time_appconnect}\nRedirect time:\t%{time_redirect}\nPreXfer time:\t%{time_pretransfer}\nStartXfer time:\t%{time_starttransfer}\n\nTotal time:\t%{time_total}\n' -o /dev/null $1
}

