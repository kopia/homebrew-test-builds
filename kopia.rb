# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250304.0.165316"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250304.0.165316/kopia-20250304.0.165316-macOS-x64.tar.gz"
    sha256 "a4ffdedc326c3cc8d76822ad7e5b9ad1d3466a616d595271bdd021dd90478fca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250304.0.165316/kopia-20250304.0.165316-macOS-arm64.tar.gz"
    sha256 "91301c6618efd348b81fa57550b1e2e8840121ea402e20ed76513de1f10cfa4b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250304.0.165316/kopia-20250304.0.165316-linux-x64.tar.gz"
    sha256 "dd599adacda67a11f05f1336ba40b3534ede281d76b309979103961d800d0f1b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250304.0.165316/kopia-20250304.0.165316-linux-arm.tar.gz"
    sha256 "af18314a4ea09fc1e451120ae45ff43c81915e2da642755e69242e2712d0236e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250304.0.165316/kopia-20250304.0.165316-linux-arm64.tar.gz"
    sha256 "fd58ba4554b9231911873267e02d78a2fb660a12d8c7f0ef5058a9ef9e9a72eb"
  end

  def install
    bin.install "kopia"
  end
end
