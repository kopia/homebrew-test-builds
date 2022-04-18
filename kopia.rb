# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220415.0.63206"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220415.0.63206/kopia-20220415.0.63206-macOS-x64.tar.gz"
    sha256 "dd6fc8a1f0f6937d7ea7978933c3605cfc398dbf8cf89c3129d96b42c83fc91f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220415.0.63206/kopia-20220415.0.63206-macOS-arm64.tar.gz"
    sha256 "df6be102b0fe504a0c84d83a23e57eebd209dc2c1e4b779ab7cca87ade44ec92"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220415.0.63206/kopia-20220415.0.63206-linux-x64.tar.gz"
    sha256 "4de3824020836c98295e6b282dc6ec2eed46ed12f5f17db9e6d1448c22aefe03"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220415.0.63206/kopia-20220415.0.63206-linux-arm.tar.gz"
    sha256 "d6c703d120b79956a968e67c9673d0e8e697882ab9998f3072f4e4e7b12a180b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220415.0.63206/kopia-20220415.0.63206-linux-arm64.tar.gz"
    sha256 "e748f6683ae5ac8bbe7a08aba5d476b8479428f88338836107212c9d0618a95f"
  end

  def install
    bin.install "kopia"
  end
end
