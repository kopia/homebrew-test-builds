# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250423.0.43629"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.43629/kopia-20250423.0.43629-macOS-x64.tar.gz"
    sha256 "961a3a3304968980b12ce5638148af460849660e1dbb0702a15b9d8f75dc82f2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.43629/kopia-20250423.0.43629-macOS-arm64.tar.gz"
    sha256 "11faffdde6ba24a89713ea519ffd14453496985004428c7d97a04302cfff3f9d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.43629/kopia-20250423.0.43629-linux-x64.tar.gz"
    sha256 "b63fac1a7444de786bb11c79660aa71e78a97ea3af845f9d47dd9c4782b80166"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.43629/kopia-20250423.0.43629-linux-arm.tar.gz"
    sha256 "478833f1b838c9fa96c97190eb969f72390b8c0fc925ad75b0366830839dba0c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.43629/kopia-20250423.0.43629-linux-arm64.tar.gz"
    sha256 "a309832ad02c5bcc97a9e974947281570c388306bf9d3a8af4b84bfdb6b83b30"
  end

  def install
    bin.install "kopia"
  end
end
