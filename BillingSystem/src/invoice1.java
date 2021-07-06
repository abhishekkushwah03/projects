import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

import java.util.*;
import java.io.*;
import java.text.*;

class frame1 extends JFrame implements ActionListener, ItemListener 
 {
      
    JLabel l1,l2,l3,l4,l5,l6;
    JTextField tf1,tf3,tf5,tf7;
    JTextArea ta1; 
    JButton b1,b2,b3,b4,b5,b6;
    JComboBox cb1,cb2,cb3,cb4;
    String s7,s8, dummydata,s9,favdata;
    String total[],boxdata,searchTerm,  filepath;
    int i,pdata,sum=0,sumdata,calgst,gstdata,demodata;
    String totaldata[];
   frame1()
 {    
      Toolkit t=Toolkit.getDefaultToolkit();
      Dimension d=t.getScreenSize();
      Font f = new Font("Times New Roman",Font.BOLD,18);
	 
      Image i=t.getImage("pp.jpg");
      setIconImage(i);
      Color c = new Color(98,217,217);
      setBackground(c);

   l1 = new JLabel("Enter name");
   l1.setBounds(30,50,150,20);
   add(l1);
  
   l2 = new JLabel(" Product");  
   l2.setBounds(400,50,100,20);
   add(l2); 
     
   l3 = new JLabel("rate");  
   l3.setBounds(400,100,100,20);
   add(l3);
  
    l4 = new JLabel("Qty");
    l4.setBounds(400,150,100,20);
    add(l4);
    
    l5 = new JLabel("contact no");
    l5.setBounds(30,100,150,20);
    add(l5);	
   
    l5 = new JLabel("city");
    l5.setBounds(30,150,150,20);
    add(l5);
     l6 = new JLabel("gst %:-");
     l6.setBounds(700,150,150,20);	
    add(l6);
	
    	
  //------------code for taking input from .csv file--------------------//
 cb1 = new JComboBox();
 cb1.setBounds(500,50,150,20); 
     cb1.addItemListener(this); 
     add(cb1);
      String csvFile = "F:\\AbhishekLearing material\\eclipseworkspace\\BillingSystem\\src\\data.csv";
        String line = "";
       

        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {

            while ((line = br.readLine()) != null) {

                // use comma as separator
                String[] country = line.split(",");
             // country[0]
                 //s.trim(//country[1]);
				     cb1.addItem(country[0].trim()); 


            }

        } catch (IOException e) {
            e.printStackTrace();
        }
	
 
 //------------------------------------------//
  String s1[]={"1","2","3","4","5","6","7","8","9","10"} ; 
   cb2 = new JComboBox(s1);
   cb2.setBounds(500,150,100,20);
   add(cb2);
   
    String s5[]={"indore","bhopal","delhi","gurgaon","mumbai"} ; 
    cb3 = new JComboBox(s5);
    cb3.setBounds(140,150,100,20);
    add(cb3);
    cb3.addItemListener(this); 
     String snewdata[]={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18"};
    cb4= new JComboBox(snewdata);
    cb4.setBounds(800,150,100,20);    
    add(cb4);
    cb4.addItemListener(this); 
  
   tf1 = new JTextField();
   tf1.setBounds(140,50,200,20);     //name
   add(tf1);
   
   tf3 = new JTextField();
   tf3.setBounds(500,100,100,20);  //charge
   add(tf3);  
   tf5 = new JTextField();
   tf5.setBounds(800,50,100,20);     //total
   add(tf5);
   
   tf7= new JTextField();
   tf7.setBounds(140,100,200,20);    //contact no
   add(tf7);
   
    b1 = new JButton("cost");
    b1.setBounds(700,50,80,20);
    add(b1);
    b1.addActionListener(this);
    
    b2 = new JButton("add product");
    b2.setBounds(700,100,200,20);
    add(b2);
    b2.addActionListener(this);
	
	b3 = new JButton("details");
    b3.setBounds(260,150,80,20);
    add(b3);
    b3.addActionListener(this);
	
	b4 = new JButton("calculate");
    b4.setBounds(1100,150,90,20);
    add(b4);
    b4.addActionListener(this);
		
	b5 = new JButton("print");
    b5.setBounds(1200,150,80,20);
    add(b5);
    b5.addActionListener(this);
     
    ta1=new JTextArea();
    ta1.setBounds(20,200,1400,450);   
    ta1.setFont(f);
	add(ta1);


//--------------code for date and time-----------//

SimpleDateFormat sdf=new SimpleDateFormat("dd/mm/yyyy  HH:mm:ss");
		 Date date = new Date();
	   s7	= (""+sdf.format(date));
	//----------------------------------------//	


 }   
    //listeners//
public void actionPerformed(ActionEvent e)
 {   if(e.getSource()==b1)
	 {
      try
	        {
            String s3 =tf3.getText();
            String s4=(String)cb2.getSelectedItem();
            int x =Integer.parseInt(s3);
            int y=Integer.parseInt(s4);
            int z= x*y;
            String s5 =""+z;
        	 tf5.setText(s5);
			
		                                        //code for evaluating amount
	      
	 }
	 catch(Exception c){}
	 }
	 
	   if(e.getSource()==b3)
	   {
	    ta1.append("Customer name:-"+tf1.getText()+","+"\n"+"contact:-"+tf7.getText()+","+"\n"+"city:-"
		                              +(String)cb3.getSelectedItem()+"\t\t"+(s7)+"."+"\n\n");
        ta1.append("Product name"+"\t"+"Qty"+"\t"+"Rate(per nos)"+"\t"+" Charges"
		                 +"\n");
	   }
	    if(e.getSource()==b2)
		{	   dummydata=tf5.getText();				
               pdata=Integer.parseInt(dummydata);
			   sumdata=sum+pdata;
			   sum=sumdata;
			   s9=""+sumdata;
			    gstdata=Integer.parseInt((String)cb4.getSelectedItem());
			    calgst=(sum*gstdata)/100;
			   
		ta1.append((String)cb1.getSelectedItem()+"\t"+(String)cb2.getSelectedItem()+"\t"+tf3.getText()+"\t"+
		                      tf5.getText()+"\n");	
			
		}	
           if(e.getSource()==b4)
		   {
			   ta1.append("--------------------------------------------------------------------"+"\n");
			   ta1.append("\t\t"+"gst "+(""+gstdata)+"% :-"+(""+calgst)+"\n"+"\t\t"+" amount:-"+s9+"\n");
			   ta1.append("--------------------------------------------------------------------"+"\n");
			    ta1.append("thankyou for shopping with us");
		   }			   
			 if(e.getSource()==b5)
		{
		//-------------code for printing invoice--------------//
                MessageFormat Header = new MessageFormat("invoice");
               MessageFormat Footer=new MessageFormat("page{0,number,integer}");
            try
        {
	            ta1.print(Header,Footer);
         }
         catch(Exception u){}
		}
//--------------------------------------------------------------//
   
       
			
 
  } 
public void itemStateChanged(ItemEvent e)
  {   searchTerm = (String)cb1.getSelectedItem();	
       filepath="data.csv";
     readRecord(searchTerm,filepath); 
	try{
	 tf3.setText((String)favdata);
	}
	catch(Exception s){}

  }
//----readrecord-----------------------//
     	 	
 public void readRecord(String searchTerm,String filepath)
{     //  searchTerm = (String)cb1.getSelectedItem();	
       //filepath="data.csv";
     //readRecord(searchTerm,filepath); 
      boolean found=false;
	  String FoodItem="";String MRP="";
     try{
	      Scanner x=new Scanner(new File(filepath));
	       x.useDelimiter("[,\n]");
		   
		   
	 while(x.hasNext() && !found)
	 {    String data = x.next();
         String values[]=data.split(",");
         FoodItem=values[0];
	      MRP=x.next(); 
	   
	  if(FoodItem.equals(searchTerm))
	   {
		   found=true;
	    } 
	   if(found)
	   { 
         favdata=MRP;
        
		 
	   }
	   else{
		  favdata = ""+225;
	   }
	 }
	 }
	 catch(Exception e)
	 {
	  e.printStackTrace();
	 }
	 //------------readrecord-----------------------//
}  
 }
class invoice1
{
 public static void main(String args[]) 
  {
	
    frame1 f = new frame1();
    f.setLayout(null);
    f.setVisible(true); 
    f.setSize(1500,800);
    f.setLocation(0,0);
    //f.setDefaultCloseOperation(f.EXIT_ON_CLOSE);
		
   }
  
}




