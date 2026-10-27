# homebrew-tap

Homebrew formulae for [languette](https://github.com/mark-brannan/languette).

```
brew install mark-brannan/tap/languette
```

## Releases

The formula follows each languette release on its own. Languette's
[publish workflow](https://github.com/mark-brannan/languette/blob/main/.github/workflows/publish.yml)
(job `homebrew`) writes the new tag's `url` and `sha256` into
`Formula/languette.rb` and pushes it here as `languette X.Y.Z`; this repo's
own workflow then builds and tests the formula on macOS. Don't bump either
line by hand. If that push failed, re-run only that job on the same Publish
run; a fresh dispatch stops at PyPI, which refuses a version it already has.
