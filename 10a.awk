BEGIN{
      FS="-"
 str = ARGV[1]
split(str,a,"-")



        if((a[2]>0 && a[2]<=12) && (a[1]>0 && a[1]<=31))
        {
        
        if(a[2]==1 )
       
      {
    printf("Jan %d\t %d\t", a[1], a[3])
    }
    else if(a[2]==3 )
    {
    printf("Mar %d\t %d\t", a[1], a[3])
    }
    else if((a[2]==4) && (a[1]>0 && a[1]<=30))
    {
    printf("Apr %d\t %d\t", a[1], a[3])
    }
    else if(a[2]==5 )
    {
    printf("May %d\t %d\t", a[1], a[3])
    }
    else if((a[2]==6) && (a[1]>0 && a[1]<=30))
    {
    printf("June %d\t %d\t", a[1], a[3])
    }
    else if(a[2]==7 )
    {
    printf("July %d\t %d\t", a[1], a[3])
    }
    else if(a[2]==8 )
    {
    printf("Aug %d\t %d\t", a[1], a[3])
    }
    else if ((a[3]==9) && (a[1]>0 && a[1]<=30))
    {
    printf("Sep %d\t %d\t",a[1],a[3])
    }
    else if(a[2]==10)
    {
    printf("Oct %d\t %d\t", a[1], a[3])
    }
    else if((a[2]==11) && (a[1]>0 && a[1]<=30))
    {
    printf("Nov %d\t %d\t", a[1], a[3])
    }
   else if(a[2]==12)
{
    printf("Dec %d\t %d\t", a[1], a[3])
    }
    
    
else  if (a[2]==2)
 {
if(a[1]>0 && a[1]<=28 && (a[3]%4)!=0)
printf("Feb %d\t %d\t and is not a leap Year", a[1], a[3])
else if(a[1]>0 && a[1]<=29 && (a[3]%4)==0)
printf("Feb  %d\t %d\t and is a leap Year",a[1], a[3])
else
printf("invalid date \n");
}
   else 
    {
    printf (" Please Enter correct date \n");
    }
    }
else 
   printf ("invalid! please enter correct month or date \n");
   printf("\n")
   
   
}
