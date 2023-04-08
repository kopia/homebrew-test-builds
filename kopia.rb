# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230408.0.43045"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230408.0.43045/kopia-20230408.0.43045-macOS-x64.tar.gz"
    sha256 "39e268c2f63df44f6be168f0bc5df8b34b1999cdf6f3bb573f40c00d3f791135"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230408.0.43045/kopia-20230408.0.43045-macOS-arm64.tar.gz"
    sha256 "e48c42390f28cd16a3951abfde596ae85760e0fcd32e26ae12e645e3c4494315"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230408.0.43045/kopia-20230408.0.43045-linux-x64.tar.gz"
    sha256 "5664a313fb7eeaedb2679f9d9aba34782ddcd06d5895b6b04b768ab4125861c3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230408.0.43045/kopia-20230408.0.43045-linux-arm.tar.gz"
    sha256 "63a109645802428f45ab7ae79adb740537f0d7858ac11db3a609daf9397abdfc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230408.0.43045/kopia-20230408.0.43045-linux-arm64.tar.gz"
    sha256 "ed5e752bc2e9f576d60e87b46b4f408f69783722b0db137db40f160691a93704"
  end

  def install
    bin.install "kopia"
  end
end
