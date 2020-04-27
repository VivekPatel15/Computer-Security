#Vivek Patel
import hashlib

dict_file = "dic-0294.txt"
pw1_hash = open("pw1.hex").read().strip()
pw2_hash = open("pw2.hex").read().strip()
pw3_hash = open("pw3.hex").read().strip()
spw1_hash = open("spw1.hex").read().strip()
spw2_hash = open("spw2.hex").read().strip()
spw3_hash = open("spw3.hex").read().strip()
salt = open("salt.hex").read().strip()

pw1_bytes = pw1_hash.encode()
pw2_bytes = pw2_hash.encode()
pw3_bytes = pw3_hash.encode()
spw1_bytes = spw1_hash.encode()
spw2_bytes = spw2_hash.encode()
spw3_bytes = spw3_hash.encode()
salt_bytes = bytes.fromhex(salt)

#print("pw1 bytes length: " + str(len(pw1_bytes)))
#print("pw2 bytes length: " + str(len(pw2_bytes)))
#print("pw3 bytes length: " + str(len(pw3_bytes)))
#print("spw1 bytes length: " + str(len(spw1_bytes)))
#print("spw2 bytes length: " + str(len(spw2_bytes)))
#print("spw3 bytes length: " + str(len(spw3_bytes)))

def pw1():
    with open(dict_file) as fileobj:
        for pw in fileobj:
            pw = pw.strip()
            if hashlib.sha1(pw.encode()).hexdigest() == pw1_hash:
                print ("pw1.hex decoded: %s" % (pw))
                return ""
    print ("Failed to crack pw1.hex")

def pw2():
    with open(dict_file) as fileobj:
        for pw in fileobj:
            pw = pw.strip()
            if hashlib.sha256(pw.encode()).hexdigest() == pw2_hash:
                print ("pw2.hex decoded: %s" % (pw))
                return ""
    print ("Failed to crack pw2.hex")

def pw3():
    with open(dict_file) as fileobj:
        for pw in fileobj:
            pw = pw.strip()
            if hashlib.md5(pw.encode()).hexdigest() == pw3_hash:
                print ("pw3.hex decoded: %s" % (pw))
                return ""
    print ("Failed to crack pw3.hex")

def spw1():
    with open(dict_file) as fileobj:
        for pw in fileobj:
            pw = pw.strip()
            test = hashlib.sha256()
            test.update(salt_bytes)
            test.update(pw.encode())
            if test.hexdigest() == spw1_hash:
                print ("spw1.hex decoded: %s" % (pw))
                return ""
    print ("Failed to crack spw1.hex")

def spw2():
    with open(dict_file) as fileobj:
        for pw in fileobj:
            pw = pw.strip()
            test = hashlib.md5()
            test.update(salt_bytes)
            test.update(pw.encode())
            if test.hexdigest() == spw2_hash:
                print ("spw2.hex decoded: %s" % (pw))
                return ""
    print ("Failed to crack spw2.hex")

def spw3():
    with open(dict_file) as fileobj:
        for pw in fileobj:
            pw = pw.strip()
            test = hashlib.sha1()
            test.update(salt_bytes)
            test.update(pw.encode())
            if test.hexdigest() == spw3_hash:
                print ("spw3.hex decoded: %s" % (pw))
                return ""
    print ("Failed to crack spw3.hex")

pw1()
pw2()
pw3()
spw1()
spw2()
spw3()
