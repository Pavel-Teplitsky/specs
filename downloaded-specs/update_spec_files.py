"""
author: liosha
For Python 3 only
"""

import urllib2

spec_host = 'http://stage-api-groupdocs.dynabic.com/v2.0/spec/spec-files/'
local_dir = 'E:\\rabota\\GroupDocs\\GitHub\\specs\\downloaded-specs\\'
file_names = [
	
	'async.json',
	'comparison.json',
	'comparisonPublic.json',
	'document.json',
	'merge.json',
	'post.json',
	'resources.json',
	'shared.json',
	
	'signaturePublic.json',
	'storage.json',
	'system.json',
	'user.json',
	'admin.json'
]

for name in file_names:
	print('Start download file `' + name + '`')
	response = urllib2.urlopen(spec_host + name)
	data = response.read()
	print('Write data...')
	out = open(local_dir + name, 'wb')
	out.write(data)
	out.close()
	print('Done')

