dist="dist"
static="dist/static"

files="$dist/index.html"
scp -r $files root@139.162.30.156:/var/www/html

files="$static/css $static/img $static/js $static/data.json"
scp -r $files root@139.162.30.156:/var/www/html/static
