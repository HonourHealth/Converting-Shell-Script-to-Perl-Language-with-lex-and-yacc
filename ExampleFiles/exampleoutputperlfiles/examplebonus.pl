$opt=2;
if($opt == 1)
{
	$max=6;
	$s=1;
	$f=1;
	$start=1;
	while($start <= $max)
	{
		$s=$s+$start;
		$f=$f*$start;
		$start=$start+1;
	}
	print 'printing sum' . "\n";
	$s=$s-1;
	print $s . "\n";
	print "Mult is $f" . "\n";
}elsif($opt == 2)
{
	$num1=100;
	$r=1;
	while($r < $num1)
	{
		$r=$r*2;
		if ($r < 80)
		{
		print $r . "\n";
		}
	}
}else{
	print 'printing opt' . "\n";
	print "opt = $opt" . "\n"
}

print 'end of program' . "\n";
