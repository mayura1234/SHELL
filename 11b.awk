BEGIN{
FS="|"
printf("\n");
printf("SNo\tEmployee_Id\t Empname \t empdesig\t Dept\t basic\t da\t hra\tgross\n");
printf("___________________________________________________________________________________________________\n");
}
{
sno++
if($5 < 10000)
{
	da=0.45*$5;
	hra=0.15*$5;
	gs=$5+da+hra;
}
else
{
	da=0.50*$5;
	hra=0.20*$5;
	gs=$5+da+hra;
}
printf("%d\t%d\t         %s\t     %s\t%s \t%d\t%d\t%d\t%d\n",sno,$1,$2,$3,$4,$5,da,hra,gs);
tbs+=$5;
tda+=da;
thra+=hra;
tgross+=gs;
}
END{
printf("------------------------------------------------------------------------------------------------------\n");
printf("Total : Sal=%d\tDA=%d\t HRA=%d\t Gross=%d\n",tbs,tda,thra,tgross);
printf("------------------------------------------------------------------------------------------------------\n");
}
