class Mkvdump < Formula
  desc "MKV and WebM parser CLI tool"
  homepage "https://github.com/cadubentzen/mkvdump"
  url "https://github.com/cadubentzen/mkvdump/archive/v0.5.0.tar.gz"
  sha256 "f6cf76741b15ffe6ce99a1deb08d3fb6cb2e14e888f602a9d12e43d162729063"
  license any_of: ["Apache-2.0", "MIT"]

  bottle do
    root_url "https://github.com/cadubentzen/homebrew-mkvdump/releases/download/mkvdump-0.4.5"
    sha256 cellar: :any_skip_relocation, ventura:      "aa38e2db0d8b1f3f0a3e8a1856c7d6104a618a52a7da7c58ad19fd23c6c68fec"
    sha256 cellar: :any_skip_relocation, monterey:     "192947d986f04aa2fc2b032e7a6193350ed7ef8cb250872f9b97c3743f214ed6"
    sha256 cellar: :any_skip_relocation, big_sur:      "6df33afe1809c2114ff2f328f50a1d251ec36560d5351d23ede2daa930fe17bb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a6c723dae190c7a6f3c08824ad8d006b26c12ecc54cf0f18d41fb554b899bac5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mkvdump", "--help"
  end
end
