# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220613.0.214712"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.214712/kopia-20220613.0.214712-macOS-x64.tar.gz"
    sha256 "ad4c2620f81ad22b8c9525c58fca31a8834720153b260032c56796f0a8ae13e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.214712/kopia-20220613.0.214712-macOS-arm64.tar.gz"
    sha256 "c945f591a2bf0ef6df514cd8f2b38f2ed47581e1d8411f6aadece49941b3e37b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.214712/kopia-20220613.0.214712-linux-x64.tar.gz"
    sha256 "835c1f6060b17d02fa6d0b716d366ef871733137fd84157dc7e1b90829d627c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.214712/kopia-20220613.0.214712-linux-arm.tar.gz"
    sha256 "946ccbc372ca22119f57694fb3f165d4a131fc5a21efc44cb069f9a813b0f26d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.214712/kopia-20220613.0.214712-linux-arm64.tar.gz"
    sha256 "1f9aa87d60f05ddd6b494270c81230783260135b5e6bb6a426a283b9e58ddb71"
  end

  def install
    bin.install "kopia"
  end
end
