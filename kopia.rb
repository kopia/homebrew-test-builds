# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210424.0.110233"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.110233/kopia-20210424.0.110233-macOS-x64.tar.gz"
    sha256 "b89ac64c79cd0ab3f49e544bf2b8be5ad24b032311dec2f1e88bbc80d679a656"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.110233/kopia-20210424.0.110233-macOS-arm64.tar.gz"
    sha256 "c18c61e9640fdf6a33de816982d47aa04c9a4aa228d880702ce920e068bd7f8b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.110233/kopia-20210424.0.110233-linux-x64.tar.gz"
    sha256 "af77645baa557549582b991b26503860b7da8d9286601aa52b248bd0510c7eb8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.110233/kopia-20210424.0.110233-linux-arm.tar.gz"
    sha256 "c45e53fbdff42a233e8a0886d6162251141a7d16fd212985ae5ced56a52026f8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210424.0.110233/kopia-20210424.0.110233-linux-arm64.tar.gz"
    sha256 "ea2d9f9b94e4f0909d493ac740301e6ddb2ed4eb28a8c1320550ee6ef9fcb206"
  end

  def install
    bin.install "kopia"
  end
end
