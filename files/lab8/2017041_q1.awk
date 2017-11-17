BEGIN {
	getline radius
	if(radius>=0)
	{
		print "Area= ",3.14*radius*radius
		print "Perimeter= ",6.28*radius
	}
	else 
	{	
		print "Radius is less than 0"
	}
	exit
}

END{}
