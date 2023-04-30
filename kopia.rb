# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230429.0.231157"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230429.0.231157/kopia-20230429.0.231157-macOS-x64.tar.gz"
    sha256 "91b35481ba9745531e9d3b18a8af466e03dfdb19289f5f16ff9569dfdb4439f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230429.0.231157/kopia-20230429.0.231157-macOS-arm64.tar.gz"
    sha256 "144d54a6b5be285f5a115f7a99d8670178fc0bc44159347149bf8bfc2b0a13a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230429.0.231157/kopia-20230429.0.231157-linux-x64.tar.gz"
    sha256 "c04782d2933d61939de9781fe143061f20792981b9d9b408c8bbb24c736ecce8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230429.0.231157/kopia-20230429.0.231157-linux-arm.tar.gz"
    sha256 "136a5780736489e9706b9e9b2cde54b6e0c150500b78db9bf48ff16776966b3e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230429.0.231157/kopia-20230429.0.231157-linux-arm64.tar.gz"
    sha256 "095daa79076d37d31a4f5ee5854e021e3c1b49ae84ac7315660ddb0208aa46ec"
  end

  def install
    bin.install "kopia"
  end
end
