# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261110.0.231742"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.231742/kopia-20261110.0.231742-macOS-x64.tar.gz"
    sha256 "bc42a02887464ed87f49c5dd3ca6e05e18d4de7ece0e92bcb92035ff0c032072"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.231742/kopia-20261110.0.231742-macOS-arm64.tar.gz"
    sha256 "4349f4f2612e2bbbfb879dc6e7ebd99c3b0afa86628820ff1fa5478372ccf534"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.231742/kopia-20261110.0.231742-linux-x64.tar.gz"
    sha256 "28d17ac73314bc4feea276291485bad1d23706d6d60bf027ce38dcec997a6c55"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.231742/kopia-20261110.0.231742-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.231742/kopia-20261110.0.231742-linux-arm64.tar.gz"
    sha256 "cc86b6cea942b29a02441d83c0435601e6a210df30cac3321229dab20aa91421"
  end

  def install
    bin.install "kopia"
  end
end
