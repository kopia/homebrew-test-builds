# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211109.0.83947"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.83947/kopia-20211109.0.83947-macOS-x64.tar.gz"
    sha256 "570fc4e296deb8d4d54e7f2fb96cbda202995bdc0a1adc4f282f63b95fe82c1b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.83947/kopia-20211109.0.83947-macOS-arm64.tar.gz"
    sha256 "511793d634987fc9efb6c2f7778743abad1d6fa7822564449b8791cad3a71678"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.83947/kopia-20211109.0.83947-linux-x64.tar.gz"
    sha256 "203d85c08122593066498b396fc0c93ee1a236e1cfc16e6d88973862f3826b27"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.83947/kopia-20211109.0.83947-linux-arm.tar.gz"
    sha256 "8233e98e1b6c93d9befe7adc1fcfeab01675abac02c07ca12c76a962946bcdd1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.83947/kopia-20211109.0.83947-linux-arm64.tar.gz"
    sha256 "33c62219a8c7a0d16367fb4091b8e06d93e23cb7a11edf98ea71cb2b5a63d4df"
  end

  def install
    bin.install "kopia"
  end
end
