BEGIN{
FS="-"
printf("______________________________\n");
printf("DEPT	                Total\n");
printf("______________________________\n");
}
{
arr[$1]+=$2
tot+=$2
}
END{
for(i in arr)
{
printf("%s\t%d\n",i,arr[i]);
}
printf("___________________\n");
printf("Total=%d\n",tot);
printf("___________________\n");
}
