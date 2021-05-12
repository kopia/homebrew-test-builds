# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210511.0.215336"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.215336/kopia-20210511.0.215336-macOS-x64.tar.gz"
    sha256 "995385b97ef9d2bdd56cc28bd4c5918e1cc4c2f4ddb218d241b55963c3810948"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.215336/kopia-20210511.0.215336-macOS-arm64.tar.gz"
    sha256 "ecf3bd01c139930a7cc819705a2faed946ea71d01f955049b568a27199740e79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.215336/kopia-20210511.0.215336-linux-x64.tar.gz"
    sha256 "ff5e209e81c8575f53cc8e4a61dde5450bc5c2be3fb705b4262121abe046c924"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.215336/kopia-20210511.0.215336-linux-arm.tar.gz"
    sha256 "c9b7b66427bcad836d86cb0f518717477f0fb0d30e4bded4896e92e4400e95c3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.215336/kopia-20210511.0.215336-linux-arm64.tar.gz"
    sha256 "16c42e36490208814162624cea27918e4fe646498e9456656bbc241104a5aab6"
  end

  def install
    bin.install "kopia"
  end
end
