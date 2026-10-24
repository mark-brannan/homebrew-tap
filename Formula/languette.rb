class Languette < Formula
  include Language::Python::Virtualenv

  desc "Fail-closed guards against risky actions by coding agents"
  homepage "https://github.com/mark-brannan/languette"
  url "https://github.com/mark-brannan/languette/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "bfb649311504b866a2b5520fd0c997f4335fd7ff67d975e8ed61a24c6efaadda"
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
