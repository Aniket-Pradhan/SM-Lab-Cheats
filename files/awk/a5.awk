BEGIN {
	
	FS="\t"
}
NR>0{
	arr[$1]++
}
END{
	for(i in arr)
		printf ("%s \t %d\n",i,arr[i]) | "sort -nk 2"
}

