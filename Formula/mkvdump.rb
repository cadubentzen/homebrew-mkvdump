class Mkvdump < Formula
  desc "MKV and WebM parser CLI tool"
  homepage "https://github.com/cadubentzen/mkvdump"
  url "https://github.com/cadubentzen/mkvdump/archive/v0.4.5.tar.gz"
  sha256 "4985ab67b34e8a94ccf7e1be612c99acaf9fda6990489bf8b188d7a7ba81bb02"
  license any_of: ["Apache-2.0", "MIT"]

  bottle do
    root_url "https://github.com/cadubentzen/homebrew-mkvdump/releases/download/mkvdump-0.4.4"
    sha256 cellar: :any_skip_relocation, ventura:      "2272bbfc018d181a2e4704713eba3d4f23391cbb93ccbb9969c506b41fb63154"
    sha256 cellar: :any_skip_relocation, monterey:     "3033e850f324187a4e44dd15a71312e8f7644eed643a5140f41fa311b4123018"
    sha256 cellar: :any_skip_relocation, big_sur:      "fca9f4bc4590747c3bcd08a7ab282a4763d8e04168173e2d5d2b852b87f5397a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "076f08928df7f4f7851bedefdb1f0c8a77de8a9bd9f90265fed32f1467d00314"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mkvdump", "--help"
  end
end
