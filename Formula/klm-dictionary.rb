class KlmDictionary < Formula
  desc "Management CLI for KLM Dictionary"
  homepage "https://github.com/aleksandr-vin/klm-dictionary"
  url "https://raw.githubusercontent.com/aleksandr-vin/klm-dictionary/master/bin/klm-dictionary", :using => :nounzip
  version "2"
  sha256 "456a5527883cf207469ab68d20f6a686fc1cb12772831e536c39970a67c50465"
  license ""

  def install
    bin.install "klm-dictionary"
  end

  test do
    assert_match /usage: klm-dictionary <command>.*/,
                 shell_output("#{bin}/klm-dictionary")
    assert_match /usage: klm-dictionary autoupdate <action>.*/,
                 shell_output("#{bin}/klm-dictionary autoupdate")
  end
end
