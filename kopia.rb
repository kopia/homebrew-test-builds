# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220809.0.65530"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.65530/kopia-20220809.0.65530-macOS-x64.tar.gz"
    sha256 "769d0bc38db4b73e786c5105d4c0422174dbb6f1df24774a029ea8886272827d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.65530/kopia-20220809.0.65530-macOS-arm64.tar.gz"
    sha256 "26519e852cdf8c90f3907e5b1a080a334336c76074b6794167c7e8da7a9340b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.65530/kopia-20220809.0.65530-linux-x64.tar.gz"
    sha256 "01606f8c4a36f7148154c90b8a8acf8f6416a01b76672a4638382bdb04b38d85"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.65530/kopia-20220809.0.65530-linux-arm.tar.gz"
    sha256 "7e720b242a3820a73dc26d332a09fb508dc73af966fa8bc1c155fa6722c92c75"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.65530/kopia-20220809.0.65530-linux-arm64.tar.gz"
    sha256 "b517b5e48bbbfa428a3a79441d4b31408d16c74e96f892aeff7edaf3cfd05039"
  end

  def install
    bin.install "kopia"
  end
end
