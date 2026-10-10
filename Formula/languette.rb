class Languette < Formula
  include Language::Python::Virtualenv

  desc "Fail-closed guards against risky actions by coding agents"
  homepage "https://github.com/mark-brannan/languette"
  url "https://github.com/mark-brannan/languette/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "bde4d223bdb9103fbceb68f59d60c61554310429563de69637f0e0b582e95c55"
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
