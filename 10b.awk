BEGIN{
print("No repeated lines:")
}

{
arr[line++]=$0
}

END{
for(i=0;i<line;i++)
{
for(j=0;j<line;j++)
{
if(i==j)
{
	printf("%d %s\n",i,arr[i]);
}
else if (arr[i]==arr[j])
	break;
}	
}
}
