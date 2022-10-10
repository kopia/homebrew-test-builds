# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221007.0.233712"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221007.0.233712/kopia-20221007.0.233712-macOS-x64.tar.gz"
    sha256 "374317c08c9b4e9e6d6b8b650898463d43e8d9892673551c9cec35a32af88f3f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221007.0.233712/kopia-20221007.0.233712-macOS-arm64.tar.gz"
    sha256 "7ca65414df197564f3651f7cbc40b61bf941e5ba8982ea9ebd55b96f35e575df"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221007.0.233712/kopia-20221007.0.233712-linux-x64.tar.gz"
    sha256 "5d8ef4df95fcfc7079ae348d14d33ee84c08cd12317626c040a724134b932bf5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221007.0.233712/kopia-20221007.0.233712-linux-arm.tar.gz"
    sha256 "3a9d8bde0be466828cbdd4bb503d4f132f7398710cf14ff7e9f5f78931fc0591"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221007.0.233712/kopia-20221007.0.233712-linux-arm64.tar.gz"
    sha256 "ee53ff2e0a09681cf1c9d8108b2dce877dabf678659e29d1c89e013681831e77"
  end

  def install
    bin.install "kopia"
  end
end
