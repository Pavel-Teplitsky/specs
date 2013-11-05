@ECHO OFF
call python update_spec_files.py

:: call python -c "import urllib2\r\nspec_host = 'http://api.groupdocs.com/v2.0/spec/spec-files/'\r\nlocal_dir = '.\\samples\\client\\groupdocs\\spec-files\\'\r\nfile_names = [\r\n	'annotation.json',\r\n	'async.json',\r\n	'comparison.json',\r\n	'comparisonPublic.json',\r\n	'document.json',\r\n'merge.json',\r\n	'post.json',\r\n	'resources.json',\r\n	'shared.json',\r\n	'signature.json',\r\n	'storage.json',\r\n	'system.json',\r\n	'user.json'\r\n]\r\nfor name in file_names:\r\n	print 'Start download file `' + name + '`'\r\n	response = urllib2.urlopen(spec_host + name)\r\n	data = response.read()\r\n	print 'Write data...'\r\n	out = open(local_dir + name, 'wb')\r\n	out.write(data)\r\n	out.close()\r\n	print 'Done'"
