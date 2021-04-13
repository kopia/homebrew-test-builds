# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.191126"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.191126/kopia-20210412.0.191126-macOS-x64.tar.gz"
    sha256 "71c595dec69fb456bc6b6524d4f16e188d870aece823e26e8825a8ce155b1fc4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.191126/kopia-20210412.0.191126-macOS-arm64.tar.gz"
    sha256 "fa7ca911e331115a0e04e27d6f7b13d8c97aa8a5d1908dd21a4cec34f94ffc8f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.191126/kopia-20210412.0.191126-linux-x64.tar.gz"
    sha256 "1e519ac802ad43fbea27b322749677da4e23b934160313a602f6e077b341761f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.191126/kopia-20210412.0.191126-linux-arm.tar.gz"
    sha256 "ce64acf780bb7ac21414ff7465dac7302ce784fe608f486727499a12dea453f1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.191126/kopia-20210412.0.191126-linux-arm64.tar.gz"
    sha256 "e8b228ae28f1010a68f43a6b381d47f802df975a859988742d33a5333df904ca"
  end

  def install
    bin.install "kopia"
  end
end
