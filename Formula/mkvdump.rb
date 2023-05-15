class Mkvdump < Formula
  desc "MKV and WebM parser CLI tool"
  homepage "https://github.com/cadubentzen/mkvdump"
  url "https://github.com/cadubentzen/mkvdump/archive/v0.5.1.tar.gz"
  sha256 "eaf1bdba277fd05fe87c0842c86fd9af78cb35f4e0535db2e9a3dedd174cebab"
  license any_of: ["Apache-2.0", "MIT"]

  bottle do
    root_url "https://github.com/cadubentzen/homebrew-mkvdump/releases/download/mkvdump-0.5.0"
    sha256 cellar: :any_skip_relocation, ventura:      "35aa4faddfef9be090a973c010627de38e623ba5217f2a7bd9ae65e656aff100"
    sha256 cellar: :any_skip_relocation, monterey:     "bb9c932b4fa8f40839044f8b9c7c6d2878e178c58624b9d3f0377d00eb05adcc"
    sha256 cellar: :any_skip_relocation, big_sur:      "e657f9e2352f66b3f0728aade5f985d24bcecbe0e569efcefdae1e7f540dad1a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "94d34321cedf788f2fbbae5e4e8bafb4ae9ad8d1c6468a6463283f65945e7e9c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mkvdump", "--help"
  end
end
