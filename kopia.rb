# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230416.0.223442"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.223442/kopia-20230416.0.223442-macOS-x64.tar.gz"
    sha256 "6ddb9a962ebe0890a29e5191ee2215dcf85a4ae823ec8569c3f01038163667d5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.223442/kopia-20230416.0.223442-macOS-arm64.tar.gz"
    sha256 "42ac57aa7c1f7b871ea66d2788c8343beb35ff6a50177077de3f0bf1ee7d0b0c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.223442/kopia-20230416.0.223442-linux-x64.tar.gz"
    sha256 "8f690f42ccf1b8d749ac0bbf805ae5fdf72cf28beb4ad47086097303b446fb62"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.223442/kopia-20230416.0.223442-linux-arm.tar.gz"
    sha256 "21256be992c6febb90e2d4aae8b72d907a147ac83748db6336f01690e37ee415"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230416.0.223442/kopia-20230416.0.223442-linux-arm64.tar.gz"
    sha256 "5c8079ddaa100119ccaa0eb243ea576b0727522fabf6354ae4104405f6057a69"
  end

  def install
    bin.install "kopia"
  end
end
