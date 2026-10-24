class Languette < Formula
  include Language::Python::Virtualenv

  desc "Fail-closed guards against risky actions by coding agents"
  homepage "https://github.com/mark-brannan/languette"
  url "https://github.com/mark-brannan/languette/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "2fd962d90f503266017d1d6eeec7233f782650ba421e888a1526068f12d6e467"
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
