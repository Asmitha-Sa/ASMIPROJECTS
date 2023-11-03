from tkinter import *
from tkinter import messagebox
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="root",database="CSCtutorial")
mycursor=mydb.cursor()
top=Tk()
top.title("Login Form")
l=Label(top,text="Login form", width=10,font=("Algerian",20))
l.place(x=60,y=40)
top.geometry("300x300")
t1=StringVar()
t2=IntVar()
uname=Label(top,text="Username",font=("bold",12)).place(x=30,y=90)
password=Label(top,text="Password",font=("bold",12)).place(x=30,y=140)
e1=Entry(top,width=20,textvariable=t1).place(x=130,y=90)
e2=Entry(top,width=20,textvariable=t2).place(x=130,y=140)
def check():
    a=str(t1.get())
    b=int(t2.get())
    sql="select username,password from login where Username='%s' and Password='%d'"%(a,b)
    mycursor.execute(sql)
    s=mycursor.fetchall()
    for row in s:
        a1=row[0]
        a2=row[1]
    if(a==a1 and b==a2):
        messagebox.showinfo("Info","Successfully Inserted!!!")
        import stuinfo
sub=Button(top,text="Sign in",bg="black",fg="white",command=check).place(x=80,y=200)
sub=Button(top,text="Forget Password",bg="white",fg="black").place(x=140,y=200)
top.mainloop()


