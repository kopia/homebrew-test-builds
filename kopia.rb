# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220313.0.214015"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220313.0.214015/kopia-20220313.0.214015-macOS-x64.tar.gz"
    sha256 "33b8b28cb6028a40944cf5eb72764e7e4a452009bf19d85af88034f1610d30c3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220313.0.214015/kopia-20220313.0.214015-macOS-arm64.tar.gz"
    sha256 "38a345c3dee340a3e39210c18034f487f2de5a35ef908a9e07f019d93b580442"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220313.0.214015/kopia-20220313.0.214015-linux-x64.tar.gz"
    sha256 "f4ebe2e561f3542f03690b258a1f9c177247b8a4021f1c60b25136f01ac70d69"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220313.0.214015/kopia-20220313.0.214015-linux-arm.tar.gz"
    sha256 "17e5dd840179c1c96674fb82c0c74b85f64a319e4d0d5a159bcf7cb536bc7693"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220313.0.214015/kopia-20220313.0.214015-linux-arm64.tar.gz"
    sha256 "68c6e06582f2eaf99c7658a71e1d2663a5ea4b619963c7ff4fd488f65f869529"
  end

  def install
    bin.install "kopia"
  end
end
