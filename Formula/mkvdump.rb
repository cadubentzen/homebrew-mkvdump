class Mkvdump < Formula
  desc "MKV and WebM parser CLI tool"
  homepage "https://github.com/cadubentzen/mkvdump"
  url "https://github.com/cadubentzen/mkvdump/archive/v0.4.4.tar.gz"
  sha256 "797fd5e91b07f9b5c0626679cdff5394051f0cc357dac6becaf047dbc7a0a976"
  license any_of: ["Apache-2.0", "MIT"]

  bottle do
    root_url "https://github.com/cadubentzen/homebrew-mkvdump/releases/download/mkvdump-0.4.3"
    sha256 cellar: :any_skip_relocation, ventura:      "db09fc55d7f601d6358cb45c957a749822b6cf9bc9e1b76fb1efc4492f512c08"
    sha256 cellar: :any_skip_relocation, monterey:     "3fb745b26da2bbb69be0cca6abc805412eca9cfa354e196a7cf0286b92999669"
    sha256 cellar: :any_skip_relocation, big_sur:      "5c5537128867585179619f570b04a87adcb2f72f3eca6fb08977afb26b6851ea"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a6b28388cf4e41f8ec873d6e2abc5e909610f39b3bbc43ccbe8c163f1d0d3c8c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mkvdump", "--help"
  end
end
