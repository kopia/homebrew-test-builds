# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210408.0.223115"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.223115/kopia-20210408.0.223115-macOS-x64.tar.gz"
    sha256 "abeb499c9d6d077161f15e0d1970abef5e13d45b2cf86c6f3ff135ed8500d4c8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.223115/kopia-20210408.0.223115-macOS-arm64.tar.gz"
    sha256 "7b193426708c148883779787695cbce42ac0e03fb251a1a141dbfd6aeb29e118"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.223115/kopia-20210408.0.223115-linux-x64.tar.gz"
    sha256 "65f5d7765f16db4ca4b5c1d6ae67d6adb6ed26be7a0f58a7358cd1c148b21019"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.223115/kopia-20210408.0.223115-linux-arm.tar.gz"
    sha256 "d796b16c71323ea84bfb156e71e093d12bedf9e40dd6cacc2eda7342ddb861f0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.223115/kopia-20210408.0.223115-linux-arm64.tar.gz"
    sha256 "dc9b927c8f0e526658e33265c413e8b59bfa2518cea2995e4a42553cb76b23f7"
  end

  def install
    bin.install "kopia"
  end
end
