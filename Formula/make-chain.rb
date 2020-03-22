class MakeChain < Formula
  desc "create a full SSL chain from a certificate and a repository of root certificates."
  homepage "https://github.com/koshatul/ssl-make-chain"

  version "0.1.0"
  url "https://github.com/koshatul/ssl-make-chain/releases/download/0.1.0/ssl-make-chain-0.1.0-darwin-amd64.zip"
  sha256 "3e7b4ec9b493de76936495d320d0d906466f9abd4ded1f1efb052bfc9999b2e9"

  def install
    bin.install "make-chain"
  end

  test do
    system "make-chain"
  end
end