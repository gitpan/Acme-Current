use ExtUtils::MakeMaker;
WriteMakefile(
  NAME => 'Acme::Current',
  VERSION_FROM => 'lib/Acme/Current.pm',
  PREREQ_PM => {
		'Test::More' => 0,
	       },
);
