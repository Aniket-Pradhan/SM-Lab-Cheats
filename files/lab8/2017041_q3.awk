BEGIN {
	FS=" "
	split("abcdefghijklmnopqrstuvwxyz",checker,"")
}
NR>0{
	for(k=1;k<=NF;k++)	
	{
		newword=""
		x=tolower($k)
		split(x,xx,"")
		flag=0
		for(i=1;i<=length(xx);i++)
		{
			for(j=1;j<=length(checker);j++)
			{
				if(checker[j]==xx[1])
				{
					flag=1
				}
				if(checker[j]==xx[i])
					newword=newword""xx[i]
			}
		}		
		if(flag==1)
			arr[newword]++
	}	
}
END{
	for(i in arr)
		printf ("%s \t %d\n",i,arr[i]) | "sort -nk 2"
}

