from tkinter import*
from tkinter import messagebox
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="root",database="CSCtutorial")
top=Tk()
top.geometry("600x650")
top.title('Courses Detail Form')
label=Label(top,text="Courses Detail Form", width=20,font=("Algerian",28))
label.place(x=70,y=40)
label1 =Label(top,text="Select the courses you want to learn.", width=27,font=("Elephant",12)).place(x=20,y=110)
myText=IntVar()
def add():
    total=var1.get()+var2.get()+var3.get()+var4.get()+var5.get()+var6.get()+var7.get()+var8.get()    
    myText.set(total)
result=Label(top, text="", textvariable=myText,bg="white",font=("bold",13)).place(x=150,y=290)
var1=IntVar()
Checkbutton(top,text="HDCA(Tally)[Rs 6500/-]", variable=var1,onvalue=6500,offvalue=0,font=("bold",13),command=add).place(x=60,y=150)
var2=IntVar()
Checkbutton(top,text="TALLY[Rs 5500/-]", variable=var2,onvalue=5500,offvalue=0,font=("bold",13),command=add).place(x=300,y=150)
var3=IntVar()
Checkbutton(top,text="HDCA [Rs 6000/-]", variable=var3,onvalue=6000,offvalue=0,font=("bold",13),command=add).place(x=60,y=180)
var4=IntVar()
Checkbutton(top,text=".NET [Rs 7500/-]", variable=var4,onvalue=7500,offvalue=0,font=("bold",13),command=add).place(x=300,y=180)
var5=IntVar()
Checkbutton(top,text="ADJP [Rs 8500/-]", variable=var5,onvalue=8500,offvalue=0,font=("bold",13),command=add).place(x=60,y=210)
var6=IntVar()
Checkbutton(top,text="ADPP [Rs 8500/-]", variable=var6,onvalue=8500,offvalue=0,font=("bold",13),command=add).place(x=300,y=210)
var7=IntVar()
Checkbutton(top,text="DTP [Rs 4500/-]", variable=var7,onvalue=4500,offvalue=0,font=("bold",13),command=add).place(x=60,y=240)
var8=IntVar()
Checkbutton(top,text="ADCHN [Rs 6500/-]", variable=var8,onvalue=6500,offvalue=0,font=("bold",13),command=add).place(x=300,y=240)
l=Label(top,text="Total Amount",width=10,font=("Elephant",12)).place(x=30,y=290)
t1=StringVar()
t2=IntVar()
l=Label(top,text="Enter the courses you selected",width=27,font=("bold",13)).place(x=25,y=330)
e1=Entry(top,width=40,textvariable=t1).place(x=280,y=330)
l=Label(top,text="Enter the amount you paid",width=24,font=("bold",13)).place(x=20,y=360)
e2=Entry(top,textvariable=t2,width=10).place(x=240,y=360)
l=Label(top,text="Balance amount to be paid",width=24,font=("bold",13)).place(x=20,y=390)
am=IntVar()
def bal():
    balance=myText.get()-t2.get()    
    am.set(balance)
res=Label(top, text="", textvariable=am,bg="white",font=("bold",13)).place(x=240,y=390)
btn=Button(top,text="Show",width=5,bg="white",command=bal).place(x=300,y=390)
l=Label(top,text="Select the bank transaction.",width=25,font=("Elephant",12)).place(x=0,y=425)
V=IntVar()
def hello():
    print (V.get())
Radiobutton(top,text="Gpay",variable=V,value=1,command=hello,font=("bold",12)).place(x=50,y=460)
Radiobutton(top,text="Phonepay",variable=V,value=2,command=hello,font=("bold",12)).place(x=120,y=460)
Radiobutton(top,text="Paytm",variable=V,value=3,command=hello,font=("bold",12)).place(x=225,y=460)
Radiobutton(top,text="Cash",variable=V,value=4,command=hello,font=("bold",12)).place(x=305,y=460)
def ins():
    a=str(t1.get())
    b=int(myText.get())
    c=int(t2.get())
    d=int(am.get())
    sql="insert into cod(courses,totalamount,amountpaid,balanceamount)values('%s','%d','%d','%d')"%(a,b,c,d)
    mycursor=mydb.cursor()
    mycursor.execute(sql)
    mydb.commit()
    messagebox.showinfo("Message","your form has been successfully submitted")
btn=Button(top, text="Submit" , width=15,bg="black",fg="white",command=ins).place(x=250,y=510)
label=Label(top,text="Your payment status and class schedule will be intimated through SMS and Email.\n Always check your Email and SMS.\nThank you",
width=65,font=("Elephant",10)).place(x=0,y=550)
top.mainloop()

