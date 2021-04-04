# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210403.0.191036"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.191036/kopia-20210403.0.191036-macOS-x64.tar.gz"
    sha256 "f693af9b3d650e890fda162b04c27ab226ef54c84a8c0a39ce6c4d6d960ef289"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.191036/kopia-20210403.0.191036-macOS-arm64.tar.gz"
    sha256 "110f1c27e9d8ebcc3475e061d8d30807f148b26713e19a1b2836cfb9ab9d8834"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.191036/kopia-20210403.0.191036-linux-x64.tar.gz"
    sha256 "e2bac4c99042aa261daa4994ad2c5bf0b17c62435193e3d222f7890ce0093577"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.191036/kopia-20210403.0.191036-linux-arm.tar.gz"
    sha256 "17dfd402c8d0d60ee92094ed49d646d88c2cf7d439b3b769bbdf5375880c381a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.191036/kopia-20210403.0.191036-linux-arm64.tar.gz"
    sha256 "531a16225ffd7b8e8ae42f665b8d973380158c6ca445adc433c68f734777f332"
  end

  def install
    bin.install "kopia"
  end
end
