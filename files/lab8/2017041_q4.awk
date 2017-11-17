BEGIN {}
NR>0{
	split($1,a,"")
	flag=0
	for(i=1;i<=length(a);i++)
	{
		if(a[i]!=a[length(a)-i+1])			
		{
			flag=1
			exit
		}
	}
}
END{
	if(flag==1)
		print $1,"is not a pallindrome"
	else
		print $1,"is a pallindrome	"
}
