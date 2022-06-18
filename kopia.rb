# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220616.0.183033"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220616.0.183033/kopia-20220616.0.183033-macOS-x64.tar.gz"
    sha256 "c79352e6443c47f3dc91b6a3a691bc8a7907af7dc4a0111b01ba7933ddd309e0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220616.0.183033/kopia-20220616.0.183033-macOS-arm64.tar.gz"
    sha256 "9292f1393ed4e0e03a7d6acd47c95f7c67e5d14a400770c4facc9f5bcbd42daf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220616.0.183033/kopia-20220616.0.183033-linux-x64.tar.gz"
    sha256 "0639819797db4e33a9f10f8c552de8d4db27b59fa145387fea293024703ac272"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220616.0.183033/kopia-20220616.0.183033-linux-arm.tar.gz"
    sha256 "5fc72afd2d15cdd9e49ac8fa7c021a77b7236b968ccb179c375d35f8af1cbb16"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220616.0.183033/kopia-20220616.0.183033-linux-arm64.tar.gz"
    sha256 "24d78db88b8703fa8c9dae9a263604787f8551100a99e5d785e27f971e8c1ff3"
  end

  def install
    bin.install "kopia"
  end
end
