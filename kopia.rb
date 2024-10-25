# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241024.0.185754"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.185754/kopia-20241024.0.185754-macOS-x64.tar.gz"
    sha256 "3004dfb20bb3f615fbafba41a32efbad880e0ab60c31cc291c49e042413f23fb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.185754/kopia-20241024.0.185754-macOS-arm64.tar.gz"
    sha256 "1c3909fded7b739ac906ad499f21aa699fdbecdff853f8255ac5e1f76dadad51"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.185754/kopia-20241024.0.185754-linux-x64.tar.gz"
    sha256 "52e0cc420c6b26597b2a95805ef9b1332ea909d73455295b9eb8c306d33203e6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.185754/kopia-20241024.0.185754-linux-arm.tar.gz"
    sha256 "cec5592ff37f0c9cd0438fd2b880618704300be9bf8965008fe1f369e759c770"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.185754/kopia-20241024.0.185754-linux-arm64.tar.gz"
    sha256 "ebdb72170238ba69a88fd13df7be3dc5086b7ffecfc61eb6c9688cde2d673fed"
  end

  def install
    bin.install "kopia"
  end
end
