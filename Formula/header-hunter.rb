class HeaderHunter < Formula
  include Language::Python::Virtualenv

  desc "CLI for HTTP headers hunting"
  homepage "https://github.com/aleksandr-vin/header-hunter"
  url "https://github.com/aleksandr-vin/header-hunter/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "eb06316a6c1d527998061f67e316bf8c876943b765d0bb8812136d8664cf0e5d"
  license "MIT"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "COOKIE=\"fffff=bbbbb\"",
                 shell_output("echo -e \"curl -H 'Cookie: fffff=bbbbb' \n xxx\" | pbcopy && #{bin}/header-hunter")
  end
end
