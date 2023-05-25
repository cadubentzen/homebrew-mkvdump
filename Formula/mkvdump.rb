class Mkvdump < Formula
  desc "MKV and WebM parser CLI tool"
  homepage "https://github.com/cadubentzen/mkvdump"
  url "https://github.com/cadubentzen/mkvdump/archive/v0.6.0.tar.gz"
  sha256 "12bdda2d1c309813bb0c94592023c25eba2fd0b3e953a79a87e3b80631ad1973"
  license any_of: ["Apache-2.0", "MIT"]

  bottle do
    root_url "https://github.com/cadubentzen/homebrew-mkvdump/releases/download/mkvdump-0.6.0"
    sha256 cellar: :any_skip_relocation, ventura:      "093f4af7f3f58462e0473362c53ee3f9dd0cf0a9a7b4e47d3ca656fd3d61980c"
    sha256 cellar: :any_skip_relocation, monterey:     "d1935f87c5eccba01e918e04fdd0b9719a9e1dd6606b1532841a134d311da0e4"
    sha256 cellar: :any_skip_relocation, big_sur:      "25f51c25c5fd0fb1ec3392b4aaf19eb12586b7cefd5c31dfe5616a0f70fff5d2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "60736aaef30ef43f42bb5c0ac660474a6719f8cc16aab535707a948d8e96346c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mkvdump", "--help"
  end
end
