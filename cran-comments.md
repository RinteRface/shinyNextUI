## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Check Win devel issues

I see error message like:

* Found the following (possibly) invalid URLs:
  URL: <https://heroui.com/docs/components/accordion>
    From: man/accordion.Rd
    Status: Error
    Message: SSL connect error [heroui.com]: schannel: failed to receive handshake, SSL/TLS connection failed
  URL: <https://webpack.js.org/>
    From: README.md
    Status: Error
    Message: SSL connect error [webpack.js.org]: schannel: failed to receive handshake, SSL/TLS connection failed

Unfortunately I can't reproduce locally, all the url exist.
