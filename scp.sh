dist="dist"
static="dist/static"

files="$dist/index.html"
scp -r $files ubuntu@www.yinchuandong.com:/var/www/html
#scp -r $files ubuntu@www.yinchuandong.com:/var/www/www.yinchuandong.com

files="$static/css $static/img $static/js $static/particles.json $static/pa4c.pdf"
scp -r $files ubuntu@www.yinchuandong.com:/var/www/html/static
#scp -r $files ubuntu@www.yinchuandong.com:/var/www/www.yinchuandong.com/static
