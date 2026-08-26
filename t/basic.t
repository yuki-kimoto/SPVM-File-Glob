use Test::More;

use strict;
use warnings;
use lib "t/lib";

use SPVM 'File::Glob';
use SPVM::File::Glob;

use SPVM 'TestCase::File::Glob';

my $api = SPVM::api();

my $start_memory_blocks_count = $api->get_memory_blocks_count();

my $test_dir = "$FindBin::Bin/ftest";

ok(SPVM::TestCase::File::Glob->test);

is_deeply(SPVM::File::Glob->bsd_glob("$test_dir/foo.txt")->to_strings, [glob("$test_dir/foo.txt")]);

is_deeply(SPVM::File::Glob->bsd_glob("$test_dir/foo")->to_strings, [glob("$test_dir/foo")]);

is_deeply(SPVM::File::Glob->bsd_glob("$test_dir/?oo")->to_strings, [glob("$test_dir/?oo")]);

is_deeply(SPVM::File::Glob->bsd_glob("$test_dir/foo*")->to_strings, [glob("$test_dir/foo*")]);

is_deeply(SPVM::File::Glob->bsd_glob("$test_dir/*")->to_strings, [glob("$test_dir/*")]);

is($SPVM::File::Glob::VERSION, $api->get_version_string('File::Glob'));

$api->destroy_runtime_permanent_vars;

my $end_memory_blocks_count = $api->get_memory_blocks_count;
is($end_memory_blocks_count, $start_memory_blocks_count);

done_testing;
