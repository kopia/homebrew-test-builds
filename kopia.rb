# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210605.0.213815"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.213815/kopia-20210605.0.213815-macOS-x64.tar.gz"
    sha256 "e7bcf92bd427eac46376407a28a1439ee7625b9eddc3abbf540f6e1aacfe39fa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.213815/kopia-20210605.0.213815-macOS-arm64.tar.gz"
    sha256 "a6590bfd5a52a01e1f7da70ce96ca4456df25983dcb6bcff13645dfb32f5a5b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.213815/kopia-20210605.0.213815-linux-x64.tar.gz"
    sha256 "45c1db8bf8e55ae4c32a9d60816451ee86aae5554ed8d6d1cac6b4eeae79c59f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.213815/kopia-20210605.0.213815-linux-arm.tar.gz"
    sha256 "f31e1e1afffa762a000222a5ba39bcf0e00fadfe590852b877fb8391788f8530"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.213815/kopia-20210605.0.213815-linux-arm64.tar.gz"
    sha256 "346a0d5bd980f4dcd2641c5b7a4334d16d9847996d99ce5e1eba0b5545812d58"
  end

  def install
    bin.install "kopia"
  end
end
