# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240429.0.172727"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.172727/kopia-20240429.0.172727-macOS-x64.tar.gz"
    sha256 "727a7501398d67568360519171b9d50c45a071ec5001584a1d7afc67f641c895"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.172727/kopia-20240429.0.172727-macOS-arm64.tar.gz"
    sha256 "bd544caba2f143db30b23ad1f8a5544a93e8ac8cbf66aaec76718a3660cf6409"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.172727/kopia-20240429.0.172727-linux-x64.tar.gz"
    sha256 "1a9c02f31c31d8b401d06ba4fb920b6a176c67ae22cdab0f198903fbfdb6afad"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.172727/kopia-20240429.0.172727-linux-arm.tar.gz"
    sha256 "aa3e0949be38ec3cb60a49ea036018ae3a8aee824fc111aae7d146eb490c5789"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.172727/kopia-20240429.0.172727-linux-arm64.tar.gz"
    sha256 "dac66a68163b87909a9f7f3c6b0175a04de83a780b137723f0a786dcf4b80717"
  end

  def install
    bin.install "kopia"
  end
end
