# Licence

<!-- SPDX-License-Identifier: {{ .Scaffold.licenceId }} -->

`{{ .ProjectSnake }}` is copyright © {{ .Computed.year }} {{ .Computed.author }}
and is licensed under {{ partial "licence_names" . }}.

- SPDX License: {{ partial "licence_links" . }}

## Developer Certificate of Origin

All contributors **must** certify they are willing and able to provide their
contributions under the terms of this project's licences with the certification
of the [Developer Certificate of Origin (Version 1.1)](licences/dco.txt).

Such certification is provided by ensuring that a `Signed-off-by` [commit
trailer][trailer] is present on every commit:

    Signed-off-by: FirstName LastName <email@example.org>

The `Signed-off-by` trailer can be automatically added by git with the `-s` or
`--signoff` option on `git commit`:

```sh
git commit --signoff
```

{{ partial "licence_trailers" . }}
