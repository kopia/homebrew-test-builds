# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240331.0.222749"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240331.0.222749/kopia-20240331.0.222749-macOS-x64.tar.gz"
    sha256 "d0db8acb1bec1c562442eaba5b26d1ef19c8d635374ae6c56ee91634b99ab530"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240331.0.222749/kopia-20240331.0.222749-macOS-arm64.tar.gz"
    sha256 "e6fe5869f54189f5a85a55c2035d4a92bdc675a317172f38fb0e5bc8f43ac060"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240331.0.222749/kopia-20240331.0.222749-linux-x64.tar.gz"
    sha256 "fa70bd0f1c450f2612e21b61493409d8998960322abca775c7e10a419f2c9491"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240331.0.222749/kopia-20240331.0.222749-linux-arm.tar.gz"
    sha256 "6ab7f15d8ba3887711495fc80dff6e0b06292da0ee0ecd45ac984c69f4fa9e94"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240331.0.222749/kopia-20240331.0.222749-linux-arm64.tar.gz"
    sha256 "2f93b3b80cf8671dbac08de0a49c6f8c608535238b867edbf7343f02996e4f66"
  end

  def install
    bin.install "kopia"
  end
end
