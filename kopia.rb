# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250617.0.22922"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.22922/kopia-20250617.0.22922-macOS-x64.tar.gz"
    sha256 "4ef6f02a199012a046af90ca5ad1b89cb98f6514deb4de071faaabea859652e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.22922/kopia-20250617.0.22922-macOS-arm64.tar.gz"
    sha256 "8a3997679fa81dfe2ff714a1ad4b235c09a721b06884e6d2fcea714c7aca70ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.22922/kopia-20250617.0.22922-linux-x64.tar.gz"
    sha256 "03b36559acc73021462dc0f66a2909c4c8017461d67be6452ef67ad51f323f2e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.22922/kopia-20250617.0.22922-linux-arm.tar.gz"
    sha256 "3afb0670474784f27e46aed436e5f0134df9bfbb0a0e84f8ec6b0275bac01fde"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250617.0.22922/kopia-20250617.0.22922-linux-arm64.tar.gz"
    sha256 "c02a3bf7490f9a501229bf25edc0461b49660633c3470fc62b2960a25fcf27a5"
  end

  def install
    bin.install "kopia"
  end
end
