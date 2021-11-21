# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211120.0.203306"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.203306/kopia-20211120.0.203306-macOS-x64.tar.gz"
    sha256 "d62e30b28db567038d3bf9b09d9f4b1fd838617af2418b91718dd24c23a3764f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.203306/kopia-20211120.0.203306-macOS-arm64.tar.gz"
    sha256 "cf110c575880b8b46bb30b05820bf5bca6f9500dc19f0e2e11c46dd6cddbef90"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.203306/kopia-20211120.0.203306-linux-x64.tar.gz"
    sha256 "e763b6110681c13d4f081b66e84731fe50ac2c5895450944bc3c13697da0f72a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.203306/kopia-20211120.0.203306-linux-arm.tar.gz"
    sha256 "3faa5b9f35fe671983c4cc8d235f705d0743607a7fbfc9ef2db059f7ecd54e6d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.203306/kopia-20211120.0.203306-linux-arm64.tar.gz"
    sha256 "f062588a168aa174c7c701e99ab5362e2d02b2e2d0baa2c4d10316f78bb9bf72"
  end

  def install
    bin.install "kopia"
  end
end
