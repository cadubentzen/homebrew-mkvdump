class Mkvdump < Formula
  desc "MKV and WebM parser CLI tool"
  homepage "https://github.com/cadubentzen/mkvdump"
  url "https://github.com/cadubentzen/mkvdump/archive/v0.5.2.tar.gz"
  sha256 "41a492563289990abee56bc7b8c2eb0e291286ebe9414528317985e263687053"
  license any_of: ["Apache-2.0", "MIT"]

  bottle do
    root_url "https://github.com/cadubentzen/homebrew-mkvdump/releases/download/mkvdump-0.5.1"
    sha256 cellar: :any_skip_relocation, ventura:      "8ec6ce011b56d20d3a6366d891c42e720cf9aaa215d71fbc6e57ef0e918cbb19"
    sha256 cellar: :any_skip_relocation, monterey:     "3f20008bbf4675414b2ef46f3fe9fc35ec78a0d9ba491257cb4ef49c67524b42"
    sha256 cellar: :any_skip_relocation, big_sur:      "13164a3d7ce67a75173f55b179c39b41f19b00def91a6a31b928ab1de4fa8360"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c78568fb3e0e0697c592e97c8de8a824d4440b9dcd6150ea4c0fc04bfcf0d6ec"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mkvdump", "--help"
  end
end
