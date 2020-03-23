class CrtshLs < Formula
  desc "query the crt.sh certificate transparency log from the CLI."
  homepage "https://github.com/koshatul/crtsh-ls"

  version "v0.3.0"
  url "https://github.com/koshatul/crtsh-ls/releases/download/v0.3.0/crtsh-ls-v0.3.0-darwin-amd64.zip"
  sha256 "f215a93fb5702a57eff2e7fb5871cf8e6612583e0a9f8ec6512eeeab51515839"

  def install
    bin.install "crtsh-ls"
  end

  test do
    system "crtsh-ls"
  end
end
