# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.210614"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210614/kopia-20220202.0.210614-macOS-x64.tar.gz"
    sha256 "04323b53084a7b7dbb19341324aea6223b4a85a8667df5b8d75f567491da48a9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210614/kopia-20220202.0.210614-macOS-arm64.tar.gz"
    sha256 "ccbd05c208723d408bf81317f63261e24cdb19e511abaebbc5f4ead7a85527b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210614/kopia-20220202.0.210614-linux-x64.tar.gz"
    sha256 "ebbd996a4019a98070a5c7c6c56be26d4fc8d80c712eae46f9800c3bc988876a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210614/kopia-20220202.0.210614-linux-arm.tar.gz"
    sha256 "8414700fa265a88680fea01650d966e3129db8ee1b35f93500ae6db970f949f9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210614/kopia-20220202.0.210614-linux-arm64.tar.gz"
    sha256 "3a8978909eee0d69bfc299a236092076c234441d1d69fa93b6be0a98ec772c51"
  end

  def install
    bin.install "kopia"
  end
end
