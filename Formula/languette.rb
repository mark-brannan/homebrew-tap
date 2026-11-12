class Languette < Formula
  include Language::Python::Virtualenv

  desc "Fail-closed guards against risky actions by coding agents"
  homepage "https://github.com/mark-brannan/languette"
  # url and sha256 are written by languette's publish workflow on each
  # release (.github/workflows/publish.yml, job `homebrew`); don't bump
  # them by hand.
  url "https://github.com/mark-brannan/languette/archive/refs/tags/v0.0.21.tar.gz"
  sha256 "892e83b9a673043086d77230558e998edf48a517636ca8a24780dea23e541be4"
  license "AGPL-3.0-or-later"

  depends_on "gh"
  depends_on "python@3.13"
  depends_on "shfmt"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "doctor", shell_output("#{bin}/languette --help")
  end
end
