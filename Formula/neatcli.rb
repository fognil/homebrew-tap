class Neatcli < Formula
  desc "A smart CLI tool to organize and clean up messy directories"
  homepage "https://github.com/fognil/neatcli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fognil/neatcli/releases/download/v#{version}/neatcli-aarch64-apple-darwin.tar.gz"
      sha256 "e9982bb7349ef0cd76f819cdd17b9df88465b3ea298a621a5b29e62f7f7ac02a"
    else
      url "https://github.com/fognil/neatcli/releases/download/v#{version}/neatcli-x86_64-apple-darwin.tar.gz"
      sha256 "e39dad8a204d65f4ddf3a64ea5c67dbe73e15a9573b52ec96fff720e4d5090d6"
    end
  end

  on_linux do
    url "https://github.com/fognil/neatcli/releases/download/v#{version}/neatcli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ca636b10bb60f7a627d25dae3b5d2ede10793f42a84ccc2b351d7450cf47d053"
  end

  def install
    bin.install "neatcli"
  end

  test do
    system "#{bin}/neatcli", "--version"
  end
end
