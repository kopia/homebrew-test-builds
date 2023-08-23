# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230823.0.153806"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.153806/kopia-20230823.0.153806-macOS-x64.tar.gz"
    sha256 "178fb51713ed15483a87aff34c5b11d4d8b370c2c373e7425501c4c5636a8ffa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.153806/kopia-20230823.0.153806-macOS-arm64.tar.gz"
    sha256 "ee41eb9bf8f42c6f5a96f5fb0755efd8e0abe6b5ad9bd7e4ecff9e14e55c4f2e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.153806/kopia-20230823.0.153806-linux-x64.tar.gz"
    sha256 "8d8a43ca2e438de4e0539028e1918276deae38b032bef192d34f92cf72a72bec"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.153806/kopia-20230823.0.153806-linux-arm.tar.gz"
    sha256 "2530d765b723da436b3c1efa20eeb9ab53fae17535ef0e50a850bcca6138185b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.153806/kopia-20230823.0.153806-linux-arm64.tar.gz"
    sha256 "0351ba0705aa6a972e7dc327c14567907e4d7e665076f0a3bb2311bacf096dca"
  end

  def install
    bin.install "kopia"
  end
end
