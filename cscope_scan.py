"""
excute this script under you code's root folder, 
this will generate the cscoe.files and then excute cscope -bk
"""

import os

codeRootDir = os.getcwd()

__revision__ = '0.1'
__author__ = 'richgold'

FILE_TYPE_LIST = ['py']

if __name__ == '__main__':
	import os
	f = open('cscope.files','w')
	for root,dirs,files in os.walk(codeRootDir):
		for file in files:
			for file_type in FILE_TYPE_LIST:
				if file.split('.')[-1] == file_type:
					f.write('%s\n' %os.path.join(root,file))
	f.close()
	cmd = 'cscope -bk'
	os.system(cmd)
