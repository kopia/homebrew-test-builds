# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250123.0.194153"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.194153/kopia-20250123.0.194153-macOS-x64.tar.gz"
    sha256 "227ded7d6e97ee5ace3a98922b84802cf9750b4f1df3c16356f044c34720a478"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.194153/kopia-20250123.0.194153-macOS-arm64.tar.gz"
    sha256 "e600e68c7b4caed2c417c7e0690f8b8c56e5717ca1a89927b21d3376c6e3ec68"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.194153/kopia-20250123.0.194153-linux-x64.tar.gz"
    sha256 "4eb4a23add78c5003b89966bdbd985e91965ace8b2010e187dd7077b4142abce"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.194153/kopia-20250123.0.194153-linux-arm.tar.gz"
    sha256 "3bc5c4c2c8c163d8b52450086e9c57e03e3488e425d43ba0959abf7c2e49921e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250123.0.194153/kopia-20250123.0.194153-linux-arm64.tar.gz"
    sha256 "cb3fa54b6cc2c138ae927d57356da2006568c2983c926b55fb513b78df980e99"
  end

  def install
    bin.install "kopia"
  end
end
