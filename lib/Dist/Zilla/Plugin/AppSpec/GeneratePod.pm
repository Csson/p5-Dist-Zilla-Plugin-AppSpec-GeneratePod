use 5.10.0;
use strict;
use warnings;

package Dist::Zilla::Plugin::AppSpec::GeneratePod;

# ABSTRACT: Generate pod for an App::Spec'd app
# AUTHORITY
our $VERSION = '0.0100';

use Moose;
use namespace::autoclean;
use Types::Standard qw/ArrayRef/;
use App::Spec;

use Dist::Zilla::File::InMemory;
with 'Dist::Zilla::Role::FileGatherer';

has spec => (
    is => 'ro',
    isa => ArrayRef,
    traits => ['Array'],
    handles => {
        specs => 'elements',
    },
);

sub mvp_multivalue_args { qw/spec/ }

sub gather_files {
    my $self = shift;

    foreach my $spec ($self->specs) {
        my($input, $output) = split m{\s*->\s*}, $spec;

        my $file = Dist::Zilla::File::InMemory->new(
            name => $output,
            content => App::Spec->read($input)->generate_pod,
        );
        $self->add_file($file);
    }
}

1;

__END__

=pod

=head1 SYNOPSIS

    # in dist.ini
    [AppSpec::GeneratePod]
    spec = source/myapp.yaml -> lib/myapp.pod

=head1 DESCRIPTION

Dist::Zilla::Plugin::AppSpec::GeneratePod wraps the L<App::Spec|https://github.com/perlpunk/App-Spec-p5> C<_pod> command and saves the output to a .pod file.

=cut
