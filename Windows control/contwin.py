import os 

os.system('cls' if os.name == 'nt' else 'clear')
print("S S H  S E R V E R  C O N T R O L")
print("W İ N D O W S")
print("")
print("1) Connect device")
print("")

secim = input("Seçim yap: ")

if secim == "1":

    os.system('cls' if os.name == 'nt' else 'clear')

    kullanıci = input("Enter the user you want to connect to: ")

    os.system('cls' if os.name == 'nt' else 'clear')

    ip = input("Enter the IP address you want to connect to: ")

    os.system('cls' if os.name == 'nt' else 'clear')

    print("Starting connection")

    os.system(f"ssh {kullanıci}@{ip}")



