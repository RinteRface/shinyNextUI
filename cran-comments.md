## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Check Win devel issues

Thanks for reviewing the package:

* Added `@return` to all roxygen2 documented functions.
* Reduced size of JS assets.
* Added `inst/helpers/doc` and `inst/helpers/test` to `.Rbuildignore` as they are not needed
by end-users in the package.
* Quoted 'JavaScript' in the DESCRIPTION.
* Add more links in the DESCRIPTION. There wasn't ISBN or DOI reference for HeroUI so I added
the website link.
