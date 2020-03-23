class Goembed < Formula
  desc "goembed takes a list of local files and embeds them into golang source files."
  homepage "https://github.com/koshatul/goembed"

  version "v0.4.0"
  url "https://github.com/koshatul/goembed/releases/download/v0.4.0/goembed-v0.4.0-darwin-amd64.zip"
  sha256 "e31e3af5fc39d80dbdd2596cf4059da5452312e053f41a1f2515189df55db0e1"

  def install
    bin.install "goembed"
  end

  test do
    system "goembed"
  end
end
