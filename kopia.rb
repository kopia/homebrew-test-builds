# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241028.0.234257"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.234257/kopia-20241028.0.234257-macOS-x64.tar.gz"
    sha256 "71588e96777ab51f89ed98d7868a49fa65081c13202aa5aca374e65e7adf3c27"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.234257/kopia-20241028.0.234257-macOS-arm64.tar.gz"
    sha256 "a5bd91aa759358eac8deca683444d2f132704414abb64dc7018e09bafc517be7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.234257/kopia-20241028.0.234257-linux-x64.tar.gz"
    sha256 "7a9ca3ad5547aa3de299ac5c4ebb372e8c1b919c869fa5322a73c478694c0ee9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.234257/kopia-20241028.0.234257-linux-arm.tar.gz"
    sha256 "599f0f756c7666aaab9fdce94f0c3e43ba6f84b5cb53a7f767daeac68724c6fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.234257/kopia-20241028.0.234257-linux-arm64.tar.gz"
    sha256 "dbec6ec76558950bf978c265aa7f2ddba4d21661ad7e20a806a386b0a8042a77"
  end

  def install
    bin.install "kopia"
  end
end
