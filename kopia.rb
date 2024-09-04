# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240903.0.212956"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240903.0.212956/kopia-20240903.0.212956-macOS-x64.tar.gz"
    sha256 "120a5b0760275bcd535c0649664a8fc17b295028d4fcaec1915b592fd49cda58"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240903.0.212956/kopia-20240903.0.212956-macOS-arm64.tar.gz"
    sha256 "d36ca1da846694a0de60cc30060ed41e1b1a243522fca009e72c4ce7082deea8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240903.0.212956/kopia-20240903.0.212956-linux-x64.tar.gz"
    sha256 "0d4032974b9af8e006c2221c1d08e84c761e47269ea77134136cc814b93b82ac"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240903.0.212956/kopia-20240903.0.212956-linux-arm.tar.gz"
    sha256 "eea8f68727c9c18aa7781accf69b28c10d62133c79a30ceb8d8e149fa57bc2e8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240903.0.212956/kopia-20240903.0.212956-linux-arm64.tar.gz"
    sha256 "d9e6f41c5ee6dffbfb211f77d29c721623e0acdbbd5257265e9028c4519d9f7c"
  end

  def install
    bin.install "kopia"
  end
end
