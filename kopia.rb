# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250417.0.171927"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.171927/kopia-20250417.0.171927-macOS-x64.tar.gz"
    sha256 "a2557885a1481433afbdfa051fcf7c31f85e2f6ab0806fbcd1ceb2b6df72acca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.171927/kopia-20250417.0.171927-macOS-arm64.tar.gz"
    sha256 "5e56a4ef90dfdfdb33dd08af60613838ecd8eb18826bde2f4165a3e702f42a3a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.171927/kopia-20250417.0.171927-linux-x64.tar.gz"
    sha256 "9b4aa4ac63ad8f1df0fa0ebd954c627424fcad1d9af1a5e706a0094db8afe17a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.171927/kopia-20250417.0.171927-linux-arm.tar.gz"
    sha256 "fb14cc7fbe6d5d968fa214295c6e6f7079cb1301ec5368ab923521c614360d84"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.171927/kopia-20250417.0.171927-linux-arm64.tar.gz"
    sha256 "a2cf55ea984509c3b332fa708e27ab7c586b73369ea3f521f8dab0aa13fe705b"
  end

  def install
    bin.install "kopia"
  end
end
