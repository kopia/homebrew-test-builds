# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220923.0.173736"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.173736/kopia-20220923.0.173736-macOS-x64.tar.gz"
    sha256 "f53112dde3f93df5cede8aadb69599a7a684d4e919fc31fce4a6ef1755033a68"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.173736/kopia-20220923.0.173736-macOS-arm64.tar.gz"
    sha256 "69f0a10e4baeae898e1751641b4b466fabbe364319c035e3d528bcf45b80dfed"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.173736/kopia-20220923.0.173736-linux-x64.tar.gz"
    sha256 "a453a4616587cfd6460ab80cea63fcd28e75ae739408746ceea525c7cc2e6b7b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.173736/kopia-20220923.0.173736-linux-arm.tar.gz"
    sha256 "807616f4f050b9503efbb6ee8ca977d159368246bfa4049214a25477daae2d85"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220923.0.173736/kopia-20220923.0.173736-linux-arm64.tar.gz"
    sha256 "8c7a1b16a94bef46301a4ff5eb2300b5c12ef4615006f748a2048e89a0a3b146"
  end

  def install
    bin.install "kopia"
  end
end
