# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210403.0.231156"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.231156/kopia-20210403.0.231156-macOS-x64.tar.gz"
    sha256 "ca206883287e7599f4e225f3674b631eaaafd261d9bbf8635f197bdbdcbc4270"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.231156/kopia-20210403.0.231156-macOS-arm64.tar.gz"
    sha256 "a2e03ec894e4a6830907ad4c215af8652bd281e875190eff5ccdeb6f21197e3f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.231156/kopia-20210403.0.231156-linux-x64.tar.gz"
    sha256 "d3bd6b15233c89300e4dfd1b16ea708c8e89dcdcd120d48ce84280b72a4fad6f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.231156/kopia-20210403.0.231156-linux-arm.tar.gz"
    sha256 "8e8400e0a445b903a2d108748f257be8e04c85b745a51d2fbc0ca92b78f57ade"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.231156/kopia-20210403.0.231156-linux-arm64.tar.gz"
    sha256 "d9d68a0018f3a802a307516e92dca1eddad2364087247e3ef6bb0a433b736cf3"
  end

  def install
    bin.install "kopia"
  end
end
