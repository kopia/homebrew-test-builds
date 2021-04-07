# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.190355"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190355/kopia-20210406.0.190355-macOS-x64.tar.gz"
    sha256 "98af34ba815e373da81c9b33f9e43171c1e9bf2a5f992268c4f169fc0cd39567"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190355/kopia-20210406.0.190355-macOS-arm64.tar.gz"
    sha256 "36b87899fa7b86a2c0fbd8923c142fce66066476662743c66c5fbfd334cd4242"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190355/kopia-20210406.0.190355-linux-x64.tar.gz"
    sha256 "08aa4542a9215ea01a3e5181700a0ef941835f2f2e07107d256fdd072cdbf600"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190355/kopia-20210406.0.190355-linux-arm.tar.gz"
    sha256 "0ca018d6ba46186dde104ec98475d5c2ecac2c9b13635f0b804c1d25a80a52a8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190355/kopia-20210406.0.190355-linux-arm64.tar.gz"
    sha256 "758db9f168c84a0a635b775b3e550334d11d7451a52bbdc3c185e1c7b8a6b719"
  end

  def install
    bin.install "kopia"
  end
end
