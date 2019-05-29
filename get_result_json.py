#!/usr/bin/python
import json,os
def show_json():
    r = os.popen('salt DESKTOP-5LNAU4T.apteka.aprel state.apply copy_dir_sysadmin --output json').read()
    if r !=0:
        data = json.loads(r)
        #print(data['DESKTOP-5LNAU4T.apteka.aprel']['file_|-Copy directory recursive sysadmin_|-c:\\sysadmin utilites_|-recurse']['result'])
        for key, value in data.iteritems():
            print (key)
            for key1, value1 in data[key].iteritems():
                print (key1)
                for key2, value2 in data[key][key1].iteritems():
                    print (key2)

show_json()
