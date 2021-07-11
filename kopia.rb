# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.193624"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193624/kopia-20210710.0.193624-macOS-x64.tar.gz"
    sha256 "32028fd735768c9dd89a13af1ada5ee66d084bab482b7b50790b5605f43bd048"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193624/kopia-20210710.0.193624-macOS-arm64.tar.gz"
    sha256 "a17516be35a4cca1e8dd38d540e6ff36e31971f363008a2fe9b5496f116da71d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193624/kopia-20210710.0.193624-linux-x64.tar.gz"
    sha256 "33305f6a53042f72c73a0ffd18e7b351c3c9f2614e7a1c590ec6fddf86c9a8f4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193624/kopia-20210710.0.193624-linux-arm.tar.gz"
    sha256 "5dfc5cf2dced931645f42ffcc80b5d60079d700ed0b6cdaaebcfc0628ef057dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.193624/kopia-20210710.0.193624-linux-arm64.tar.gz"
    sha256 "1108dbd165d208e061968c30712e6fb62d15a2f3df0f3c069b7ddaa06489aa52"
  end

  def install
    bin.install "kopia"
  end
end
