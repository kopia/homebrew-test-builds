# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.112214"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.112214/kopia-20210406.0.112214-macOS-x64.tar.gz"
    sha256 "3d6e5eb6a376a69ac0f37a36763cde6ccb407a3cc2f4898324a62267b8564835"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.112214/kopia-20210406.0.112214-macOS-arm64.tar.gz"
    sha256 "ffab579e8ad3f686fde743fb99a6bc752fea0e6d45a544efe36bfaf22397f786"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.112214/kopia-20210406.0.112214-linux-x64.tar.gz"
    sha256 "d81ef68e769dfe8b574ef4b949dd99743effb05fa989d86c89ff0b4d29c7c210"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.112214/kopia-20210406.0.112214-linux-arm.tar.gz"
    sha256 "688051d30913d75b0319f1e9d7f9ad9aa12bee298e8bcc02111622a656e3f4ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.112214/kopia-20210406.0.112214-linux-arm64.tar.gz"
    sha256 "915f46d73a71e842c1e0f0a9bf21a6875491c40cfdd6a9105bed5a2fc77efaf2"
  end

  def install
    bin.install "kopia"
  end
end
