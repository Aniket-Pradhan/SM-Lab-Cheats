BEGIN {}
NR>0{
	sum_odd=0
	sum_even=0
	for(i=$1;i<=$2;i++)
	{
		if(i%2==0)
		{
			sum_even+=i
		}
		else
		{
			sum_odd+=i
		}
	}
}
END{
	print "Sum of odd numbers = ",sum_odd
	print "Sum of even numbers = ",sum_even
}
