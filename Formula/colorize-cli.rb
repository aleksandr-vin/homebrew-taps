class ColorizeCli < Formula
  include Language::Python::Virtualenv

  desc "Highlight matched strings in a text (command-line text colorizer)"
  homepage "https://github.com/aleksandr-vin/colorize"
  url "https://files.pythonhosted.org/packages/f8/ca/6f46da167f272f774b2eaba65121f426bf025b36fe770da450c8858544bd/colorize-cli-0.1.tar.gz"
  sha256 "b01fc1322dd3430676ab5f82cefdc8630c3d9ce6b6c1805b99564ede908e3fee"
  license "MIT"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "fluggaen[0;35mkoe[0mc[0;35mchic[0me[1;33mbolsen[0m",
                 shell_output("echo fluggaenkoecchicebolsen | #{bin}/colorize 'bolsen|koe|[c]hic'")
  end
end
