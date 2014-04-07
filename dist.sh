#!/bin/sh
grunt build;
cp dist/images/*.line.png dist/images/line.png;
cp dist/images/*.logo.png dist/images/logo.png;
cp dist/images/*.arrow.png dist/images/arrow.png;
cp dist/images/*.more.png dist/images/more.png;
cp dist/images/*.arrow-round.png dist/images/arrow-round.png;
cp dist/images/*.arrow-share.png dist/images/arrow-share.png;
cp dist/images/*.share.jpg dist/images/share.jpg;
cp app/.htaccess dist/.htaccess

scp -r dist/* ny:/var/www/grostitre/
scp dist/.htaccess ny:/var/www/grostitre/
