# Licence

<!-- SPDX-License-Identifier: {{ .Scaffold.licenceId }} -->

`{{ .Computed.githubRepoName }}` is copyright {{ .Computed.year }} {{
.Computed.author }} and is licensed under {{ partial "licence_names" . }}.

- SPDX License: {{ partial "licence_links" . }}

## Developer Certificate of Origin

All contributors **must** certify they are able and willing to provide their
contributions under the terms of this project's licences with the certification
of the [Developer Certificate of Origin (Version 1.1)][dco].

Such certification is provided by ensuring that the following line must be
included as the last line of a commit message for every commit contributed:

    Signed-off-by: FirstName LastName <email@example.org>

The `Signed-off-by` line can be automatically added by git with the `-s` or
`--signoff` option on `git commit`:

```sh
git commit --signoff
```

{{ partial "licence_trailers" . }}
