# NAME

Dist::Zilla::Plugin::AppSpec::GeneratePod - Generate pod for an App::Spec'd app

<div>
    <p>
    <img src="https://img.shields.io/badge/perl-5.10+-blue.svg" alt="Requires Perl 5.10+" />
    <a href="https://travis-ci.org/Csson/p5-Dist-Zilla-Plugin-AppSpec-GeneratePod"><img src="https://api.travis-ci.org/Csson/p5-Dist-Zilla-Plugin-AppSpec-GeneratePod.svg?branch=master" alt="Travis status" /></a>
    <a href="http://cpants.cpanauthors.org/release/CSSON/Dist-Zilla-Plugin-AppSpec-GeneratePod-0.0100"><img src="http://badgedepot.code301.com/badge/kwalitee/CSSON/Dist-Zilla-Plugin-AppSpec-GeneratePod/0.0100" alt="Distribution kwalitee" /></a>
    <a href="http://matrix.cpantesters.org/?dist=Dist-Zilla-Plugin-AppSpec-GeneratePod%200.0100"><img src="http://badgedepot.code301.com/badge/cpantesters/Dist-Zilla-Plugin-AppSpec-GeneratePod/0.0100" alt="CPAN Testers result" /></a>
    <img src="https://img.shields.io/badge/coverage-95.1%-yellow.svg" alt="coverage 95.1%" />
    </p>
</div>

# VERSION

Version 0.0100, released 2016-08-25.

# SYNOPSIS

    # in dist.ini
    [AppSpec::GeneratePod]
    spec = source/myapp.yaml -> lib/myapp.pod

# DESCRIPTION

Dist::Zilla::Plugin::AppSpec::GeneratePod wraps the [App::Spec](https://github.com/perlpunk/App-Spec-p5) `_pod` command and saves the output to a .pod file.

# HOMEPAGE

[https://metacpan.org/release/Dist-Zilla-Plugin-AppSpec-GeneratePod](https://metacpan.org/release/Dist-Zilla-Plugin-AppSpec-GeneratePod)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
