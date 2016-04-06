all: 

	wget http://wordpress.org/latest.zip

	unzip -q latest.zip -d ./

	mv wordpress/* ./

	rm -rf latest.zip
	
	wget http://downloads.wordpress.org/plugin/sqlite-integration.1.8.zip

	unzip sqlite-integration.1.8.zip -d wp-content/plugins/

	rm sqlite-integration.1.8.zip

	cp wp-content/plugins/sqlite-integration/db.php wp-content/

	cp wp-config-sample.php wp-config.php

