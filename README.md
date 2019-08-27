# Version checks miners & wallets

This tool allows the visitors of S-NOMP to see the current versions of a selection of the official wallets supported by the community, which have the most advanced Verus features.

- The website snippet can be placed inside the HTML page you desire.
- The location of the version files created by the script must be reachable by your website, so it must reside in a fixed place inside your web folder.
- The script can be run manually or run as a cronjob by the website account.

General instructions (exact accounts and locations may differ, depending on your preference):

1) copying and configuring the script that retrieves the versions:
- log in on your S-NOMP server as root
- `mkdir /home/s-nomp/bin` (replace "s-nomp" with the accountname running the webserver, if necessary)
- copy `getversions.sh` into `/home/s-nomp/bin`  (replace "s-nomp" with the accountname running the webserver, if necessary)
- edit `/home/s-nomp/bin.getversions.sh` with your favourite editor  (replace "s-nomp" with the accountname running the webserver, if necessary)
- adapt `OUTDIR="/home/s-nomp/s-nomp/website/static/versions"` to the location you want for the version files.
- save and exit
- `chown s-nomp:s-nomp -R /home/s-nomp/bin` (replace "s-nomp" with the accountname running the webserver, if necessary)
- `chmod +x /home/s-nomp/bin/getversions.sh` (replace "s-nomp" with the accountname running the webserver, if necessary)

2) Preparing the S-NOMP pages to display the versions:
- `mkdir /home/s-nomp/s-nomp/website/static/versions` (adapt the location you chose in step 1, if necessary)
- `chown s-nomp:s-nomp /home/s-nomp/s-nomp/website/static/versions` (adapt the account and the location you chose in step 1, if necessary)
- edit the one of the HTM pages in `/home/s-nomp/s-nomp/website/pages` where you want the information to be visible
- add the contents of the *script snippet* file in a convenient place
- add the contents of the *html snippet* file in the desired place to show on the page
- save and exit

3) running the script:
- `su - s-nomp` to log in as website user (replace "s-nomp" with the accountname running the webserver, if necessary)
- `/home/s-nomp/bin.getversions.sh` to run the script (replace "s-nomp" with the accountname running the webserver, if necessary)
- `ls -l /home/s-nomp/s-nomp/website/static/versions` to check if the version files have been created (replace first "s-nomp" with the accountname running the webserver, if necessary)
- `exit` to return to root user

4) checking the webpage:
- Go to the webpage you inserted the snippets into and check if the all info shows.

5) (Optional) schedule job:
- `su crontab -e -u s-nomp` to create a cronjob (replace "s-nomp" with the accountname running the webserver, if necessary)
- add `0 */4 * * * /home/s-nomp/bin.getversions.sh` to automagically check & update the version information every for hours. Adapt the the timing to suit your needs (replace "s-nomp" with the accountname running the webserver, if necessary)
- save and exit


Thanks to Oliver Westbrook (https://github.com/joliverwestbrook) for the basics of the version checking script.
Thanks to 0x03 (https://github.com/BloodyNora) for his endless patience with me and his pointers on Linux to me.
