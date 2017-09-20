#!bin/bash

##Written by Brian Laskowski, with thanks to Colleen Cunningham, Mark Cunningham, and Joel Parks##


###Colors
#Creates variable for red color
Red='\e[0;31m'
#Creates variable for bold red color
RedBold='\e[1;31m'
#Creates variable for green color
Green='\e[0;32m'
#Creates variable for yellow color
Yellow='\e[1;33m'
#Creates variable for purple color
Purple='\e[1;35m'
#Creates variable for no color
NoColor='\e[0m'
#

#Curls to gather data from Cisco Talos Intel Reputation Center
#sleep delay to prevent crawl delays

echo  "\n\e[1;32m=== Please wait querying Talos Reputation Database ===\n\e[1;32m"

sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=0&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' > talos1.txt
sleep 1
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=50&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=100&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=150&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=200&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=250&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=300&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=350&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=400&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=450&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt

sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=500&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=550&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=600&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=650&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=700&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=750&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=800&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=850&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=900&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2
curl 'https://www.talosintelligence.com/sb_api/query_lookup?query=%2Fapi%2Fv2%2Frelated_ips%2Forganization%2F&query_entry=Liquid+Web%2C+L.L.C&offset=950&order=ip+asc' -H 'Host: www.talosintelligence.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.talosintelligence.com/reputation_center/lookup?search=Liquid%20Web%2C%20L.L.C&org_lookup=1' -H 'Cookie: _ga=GA1.2.1708279066.1494675953; __cfduid=df2301e3f7e1d86438900e3705717ff7f1494675894; _talos_website_session=S01nWnhjcHNMM3d1NWpwNVZsMW0vRHp2dEJVQ1p5M0k5UkltRktZeG50a3Zxc2hMTjRRVGlpL1ZXR1o5VFdwblVOKzRqYnIwczhnVnMwbmVBMENPSkNsdHJsZFpVQU9FL2o5VUY3UzhjdmJjLzZyS3JOcWg2N2JxWEcrUUUxZFNObWtYTG5hUFVKNldNc0d1QUQ1aUdKQnRydHh6Zm9MREFuaGhJWWNsbkN5NEloRk1BeUZWc2RSakI3YTA4VEdGYXRqN25razA1WTB3a3huQ1RhSC8xamxuaXFHcFdjTncycmJVeml1aVdpZUhDL3kxN0N2WTJJbjgrY0gyNUFZVGw0eU91N0M5RkpSMThnUE5kZ1NKU0xDSFRiVWk2M0k5ekFSMGZQeEkzbnpiaktPSElzeE90MGhrY2U4bFVEWEwyTlRScnRCczdYY0NLdWdVamh5RlA1djhXMDlTa3Fmc3Y2RUVzMzVFTGE0PS0tc2FFUkhoMEF2RnVTSFAvWFdFWVFDUT09--67e19585905fba83c5f6084a5c4b073f158d3af6; _gid=GA1.2.680817795.1505520317; _gat=1' -H 'DNT: 1' -H 'Connection: keep-alive' >> talos1.txt
sleep 2

echo "\n\e[1;34m=== Searching Results ===\n\e[1;34m"
sleep 5

echo  "\n\e[1;33m=== Liquid Web addresses that may be actively spamming. ===\n\e[1;33m"

#sort output and display on screen all hosts with a poor reputation rating
cat talos1.txt | sed 's/\},/\},\n/g' | awk -F'[,:]' '/Poor/{print $2,$4,$6,$8,$10}' | sed 's/ /,/g' 

#sort and drop the poor hosts into a csv format
cat talos1.txt | sed 's/\},/\},\n/g' | awk -F'[,:]' '/Poor/{print $2,$4,$6,$8,$10}' | sed 's/ /,/g' > emaillist.csv

#alert user to the file
echo  "\n\e[1;34m" === Your file emaillist.csv is ready. "===\n\e[1;34m"
