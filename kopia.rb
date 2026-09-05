# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260905.0.214844"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.214844/kopia-20260905.0.214844-macOS-x64.tar.gz"
    sha256 "1f94b3a4db0406e6f970e541dbce8d443967432d804cfe856bf9075bbfdc410e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.214844/kopia-20260905.0.214844-macOS-arm64.tar.gz"
    sha256 "eb43f81a00e9f38c5eb8a51ff576ed5909af011a2857c92935e98c602d7e7456"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.214844/kopia-20260905.0.214844-linux-x64.tar.gz"
    sha256 "659ca1b20db5f2872313c3e3cd0b827d2363c61ad68a46bfc97108cd37d6399f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.214844/kopia-20260905.0.214844-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260905.0.214844/kopia-20260905.0.214844-linux-arm64.tar.gz"
    sha256 "4ee50c3fbf5a019728cddc927e303f129bdc4f6bc7bd18c69ced4fe7ae6de4f7"
  end

  def install
    bin.install "kopia"
  end
end
