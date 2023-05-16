class Mkvdump < Formula
  desc "MKV and WebM parser CLI tool"
  homepage "https://github.com/cadubentzen/mkvdump"
  url "https://github.com/cadubentzen/mkvdump/archive/v0.5.2.tar.gz"
  sha256 "41a492563289990abee56bc7b8c2eb0e291286ebe9414528317985e263687053"
  license any_of: ["Apache-2.0", "MIT"]

  bottle do
    root_url "https://github.com/cadubentzen/homebrew-mkvdump/releases/download/mkvdump-0.5.2"
    sha256 cellar: :any_skip_relocation, ventura:      "5aeffd261ce6f10fc514bef84300a667f97db80cf791e3adeabcb55c7c440e14"
    sha256 cellar: :any_skip_relocation, monterey:     "71555f58f04ac0615f8422fd3ddcbddce00a48509a36d14b30fdbb7b9e427739"
    sha256 cellar: :any_skip_relocation, big_sur:      "7199a223b8c34f089f90d8bd9912add1cd9e81b7bd9381db9bd1238cc04ba24e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7c6e55857a373df76b13dfb312fe9486db9543b986a1ad4083ee121906d63088"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mkvdump", "--help"
  end
end
