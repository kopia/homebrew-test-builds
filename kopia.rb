# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240407.0.213333"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240407.0.213333/kopia-20240407.0.213333-macOS-x64.tar.gz"
    sha256 "389c80f73db8c7370ae760b4c7f7961e313beef957685f874caeae681111a647"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240407.0.213333/kopia-20240407.0.213333-macOS-arm64.tar.gz"
    sha256 "21c11bb24c34d4a8e2cff0bafbc2a4f0d6bd60e1963adc3ca8a72f269178484c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240407.0.213333/kopia-20240407.0.213333-linux-x64.tar.gz"
    sha256 "692d0b4302deca7e4963066689df25b7e14165944f3ac8320f5a0043905cc25b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240407.0.213333/kopia-20240407.0.213333-linux-arm.tar.gz"
    sha256 "f0436a62ef8342b4c54eb2e3f37bf8d6cb7af8f005893e43143f416b47f55aa1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240407.0.213333/kopia-20240407.0.213333-linux-arm64.tar.gz"
    sha256 "6ce6a72c52dc71d93cab23988f2a897bfd3b251bdc4bc5c0a09ecc52ade831ba"
  end

  def install
    bin.install "kopia"
  end
end
