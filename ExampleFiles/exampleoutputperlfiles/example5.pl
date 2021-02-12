$opt=2;
if($opt == 1)
{
	$x1=1;
	$x2=4;
	$x3=($x1*$x2)-($x1+$x2);
	if($x3 == 10)
	{
		print 'printing x3' . "\n";
		print $x3 . "\n";
	}
        print $x1 . "\n";
        print "printing x2 x2=$x2" . "\n";
}elsif($opt <= 10)
{
	$rr1abc1=100;
	$rr2xy=200;
	$ss3aaaa=300;
	$ss34ss=($rr1abc1*$rr2xy)*($ss3aaaa-100/($rr2xy-$rr1abc1));
	if($ss34ss > $ss3aaaa)
	{
		$y1=$rr1abc1+100;
		print $y1 . "\n";
	}elsif($ss34ss < 1000){
		print "$ss34ss is little than 1000" . "\n";
	}
}else{
	print 'printing opt' . "\n";
	print "opt = $opt" . "\n";
}

print 'end of program' . "\n";
