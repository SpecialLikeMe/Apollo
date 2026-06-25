The current language has code which appears to be dead/useless, please check it and remove it if it has no use:
-Whatever the "autocatch" in grammar is
-The aync {}lang; blocks have been replaced by the more advanced inl::* {} blocks, they need to go.
__END__

Something is very wrong with the compiler on linux/macos:
the compiler did not even produce an output file when invoked, instead silently returning with no error or success message when tested on arch linux.

The test suite does not pass, so please fix the compiler so that all tests pass.
-Add impl and self features