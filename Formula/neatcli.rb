class Neatcli < Formula
  desc "A smart CLI tool to organize and clean up messy directories"
  homepage "https://github.com/fognil/neatcli"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fognil/neatcli/releases/download/v#{version}/neatcli-aarch64-apple-darwin.tar.gz"
      sha256 "5a287440a82254488eecfb7f5ce012a33786b8dd28e7982ae6b9db85a43d378e"
    else
      url "https://github.com/fognil/neatcli/releases/download/v#{version}/neatcli-x86_64-apple-darwin.tar.gz"
      sha256 "bceaf8bdf47a11578cfb34343b0d222cc4b657ec86c709551c148fdb714ecdcd"
    end
  end

  on_linux do
    url "https://github.com/fognil/neatcli/releases/download/v#{version}/neatcli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9978e9a366e3d92e87810d726af16ebc670c5befde7b1ab977d9b947f9931b7b"
  end

  def install
    bin.install "neatcli"
  end

  test do
    system "#{bin}/neatcli", "--version"
  end
end
