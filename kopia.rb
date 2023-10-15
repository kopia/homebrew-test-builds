# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231014.0.103415"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231014.0.103415/kopia-20231014.0.103415-macOS-x64.tar.gz"
    sha256 "b3a819ee972e3399844bbe51e782210bd132cff948ff8d91ac518f18ce472899"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231014.0.103415/kopia-20231014.0.103415-macOS-arm64.tar.gz"
    sha256 "da642bdcc49de4b9aa50bf2bb813d364a65573eb4c1aecfc90b7fdb76b9ca105"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231014.0.103415/kopia-20231014.0.103415-linux-x64.tar.gz"
    sha256 "e71477f021d30cb24753df7f1fd25210700c9783b46da95844f51502f94e36f0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231014.0.103415/kopia-20231014.0.103415-linux-arm.tar.gz"
    sha256 "ac510df53e748538b909ee8d53c1762bb799bcb94deaa7270a76a0a3653e17d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231014.0.103415/kopia-20231014.0.103415-linux-arm64.tar.gz"
    sha256 "68b0bd8a1cd9420f35f3bf9148ab61d9df66058ae1290831441191b72b27cb8e"
  end

  def install
    bin.install "kopia"
  end
end
