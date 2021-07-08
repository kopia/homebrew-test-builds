# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210708.0.83831"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210708.0.83831/kopia-20210708.0.83831-macOS-x64.tar.gz"
    sha256 "dd3db36946b1653b767c44519919e68afdc64ff23915bcdf63628cab765794e7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210708.0.83831/kopia-20210708.0.83831-macOS-arm64.tar.gz"
    sha256 "7bd84fd57f3aac4323edbfdc078fb601eb820b444f19a7b6dbadfa7a843fe073"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210708.0.83831/kopia-20210708.0.83831-linux-x64.tar.gz"
    sha256 "e29ba042251862e5f1a74ded0a3d654024038ddc44a4fec47db4fa1b3eac3bab"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210708.0.83831/kopia-20210708.0.83831-linux-arm.tar.gz"
    sha256 "8da905f0e5af9773cee3215d6d063321f4b38f90eea0b9d8276b7e22f7b33b0c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210708.0.83831/kopia-20210708.0.83831-linux-arm64.tar.gz"
    sha256 "cf923675b4c92772a25df8490f6e4a585d44d8c9de2c6a8e38516ffef754b47c"
  end

  def install
    bin.install "kopia"
  end
end
