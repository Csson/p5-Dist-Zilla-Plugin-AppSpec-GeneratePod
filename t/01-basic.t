use strict;
use warnings;
use Test::More;
use Test::DZil;
use Path::Tiny;

use if $ENV{'AUTHOR_TESTING'}, 'Test::Warnings';

use Dist::Zilla::Plugin::AppSpec::GeneratePod;
ok 1, 'Loaded';

my $ini = simple_ini(
    { version => '0.0001' },
    [
      'AppSpec::GeneratePod', { spec => 'myapp-spec.yaml -> lib/MyApp.pod' },
    ],
    qw/
        GatherDir
    /
);
my $tzil = Builder->from_config(
    { dist_root => '/t' },
    { add_files => { 'source/dist.ini' => $ini,
                     'source/myapp-spec.yaml' => path('t/corpus/myapp-spec.yaml')->slurp_utf8,
                    },
    },
);
$tzil->build;
like $tzil->slurp_file('build/lib/MyApp.pod'), qr/Check if a string is a palindrome/, 'Probably correct output';

done_testing;
