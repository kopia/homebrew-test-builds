# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210724.0.130450"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.130450/kopia-20210724.0.130450-macOS-x64.tar.gz"
    sha256 "9ef6ee3837c076cb887898ec85d44ef85cab9d80a870ca79d22cc5730b9188f0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.130450/kopia-20210724.0.130450-macOS-arm64.tar.gz"
    sha256 "74df93b63f34a0d91aa554d356ae7faa78240fe8ddc0f21ab89e085e5ef0e869"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.130450/kopia-20210724.0.130450-linux-x64.tar.gz"
    sha256 "6573af56c8954f1d31521c5340bd36f846326e63bebaed5d9bec7f8ea3ea27a2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.130450/kopia-20210724.0.130450-linux-arm.tar.gz"
    sha256 "5a3b65c4683c4aabf820d07078ce2581538daea82485e826a9aab668d3e98ba8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210724.0.130450/kopia-20210724.0.130450-linux-arm64.tar.gz"
    sha256 "5d16125a2fad44985adf978cf435864c33c9b2538799b71571d52aea94c72d9b"
  end

  def install
    bin.install "kopia"
  end
end
