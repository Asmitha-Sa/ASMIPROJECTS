from tkinter import *
top = Tk()    
top.geometry("300x300") 
top.title(" Login Page")  
Label(text="CSC tutorial", bg="pink",width="30", height="2", font=("Algerian", 24)).pack() 
Label(text="").pack()
Label(text="Login Window",width="30", height="2", font=("Algerian", 19)).pack() 
Label(text="").pack()
def click():
    import loginform
Button(top,text="Login",bg="white",fg="black", height="2", width="30",command=click).pack() 
Label(text="").pack()
def reg():
    import registration
Button(top,text="Register",bg="white",fg="black",height="2",width="30",command=reg).pack()
top.mainloop()
