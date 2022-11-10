import requests 
    
def signin():
    email = input("Enter email: ")
    password = input("Enter password: ")

    payload = {
        "email": email,
        "password": password
    }

    res = requests.post("http://127.0.0.1:5000/user/signin", json=payload).content.decode()

    print(res)

print("1. Signup")
print("2. Signin")
print("3. Logout")
i = int(input(""))

if i == 2:
    signin()

    