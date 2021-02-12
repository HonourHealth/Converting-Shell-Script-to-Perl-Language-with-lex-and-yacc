$opt=1;
if ($opt == 1)
{
	$x1=1;
	$x2=4;
	$x3=($x1*$x2)-($x1+$x2);
	if ($x3 < 10)
	{
		print 'printing x3' . "\n";
		print $x3 . "\n";
	}
        print $x1 . "\n";
        print "printing x2 x2=$x2" . "\n";
}else{
	print 'printing opt' . "\n";
	print "opt = $opt" . "\n";
}
