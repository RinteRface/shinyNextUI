## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Check Win devel issues

Thanks for reviewing the package:

> Missing Rd-tags:
     checkbox-group.Rd: \value
     table.Rd: \value
     theme_switcher.Rd: \value

* Added `@return` to all roxygen2 documented functions.

> Size of tarball: 5221747 bytes
    A CRAN package should not be larger than 5 MB. Please reduce the size.

* Reduced size of JS assets. However we don't have much control over the assets bundle as this is part of the HeroUI project (already 4.4MB after webpack `prod`).

> Please ensure that your functions do not write by default or in your examples/vignettes/tests in the user's home filespace (including the package directory and getwd()). This is not allowed by CRAN policies. Please omit any default path in writing functions

* Added `inst/helpers/doc` and `inst/helpers/test` to `.Rbuildignore` as they are not needed
by end-users in the package.

> Please always write package names, software names and API (application programming interface)
    names in single quotes in title and description. e.g: --> 'JavaScript'

* Quoted 'JavaScript' in the DESCRIPTION.

> If there are references describing the methods in your package, please add these in the description field of your DESCRIPTION file in the form
    authors (year) <doi:...>
    authors (year, ISBN:...)
    or if those are not available: <https:...>

* Add more links in the DESCRIPTION. There wasn't ISBN or DOI reference for HeroUI so I added
the website link.
