# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220702.0.170726"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.170726/kopia-20220702.0.170726-macOS-x64.tar.gz"
    sha256 "92d37f09e6e9760b32951164ce43b25aad42069ded02b822c2a25d520886652b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.170726/kopia-20220702.0.170726-macOS-arm64.tar.gz"
    sha256 "0a373be80c13927a9941113c39611b76591b40805404dd097fa64fc4f72becd1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.170726/kopia-20220702.0.170726-linux-x64.tar.gz"
    sha256 "eb4d4d44f643ca53e4968071f77b334336966df929ea35b168fb1bd48bf6680a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.170726/kopia-20220702.0.170726-linux-arm.tar.gz"
    sha256 "b3e76825d97b05043b5872630957427764e1dd7aee8b04ca7022070aa1e552b0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.170726/kopia-20220702.0.170726-linux-arm64.tar.gz"
    sha256 "8395529cd562aedc8b1445afe5ceed163929be366e18c8c124fcfe579bb6cd40"
  end

  def install
    bin.install "kopia"
  end
end
