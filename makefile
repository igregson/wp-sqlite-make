all: 

	wget http://wordpress.org/latest.zip

	unzip -q latest.zip -d ./

	mv wordpress/* ./

	rm -rf latest.zip

	curl -o sqlite-plugin.zip http://downloads.wordpress.org/plugin/sqlite-integration.1.7.zip

	unzip sqlite-plugin.zip -d wp-content/plugins/

	rm sqlite-plugin.zip

	cp wp-content/plugins/sqlite-integration/db.php wp-content/

	cp wp-config-sample.php wp-config.php

