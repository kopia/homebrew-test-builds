# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250918.0.44425"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.44425/kopia-20250918.0.44425-macOS-x64.tar.gz"
    sha256 "f22bc458c1c07fea46481757a81e709778f5b0fa363b95ba8d8b9d689aeea289"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.44425/kopia-20250918.0.44425-macOS-arm64.tar.gz"
    sha256 "3d0a1e8cbbb03782b38dfb40d09f15c50e4744257623ad58894f864a67043675"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.44425/kopia-20250918.0.44425-linux-x64.tar.gz"
    sha256 "826485c6b0bf245a289643d460df0a845a1a7e016e98bc011429170f161813af"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.44425/kopia-20250918.0.44425-linux-arm.tar.gz"
    sha256 "58d40f810925493116a4882c90d69ccf281413c8df00d99a93927f9738389ada"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.44425/kopia-20250918.0.44425-linux-arm64.tar.gz"
    sha256 "ea1916b9a88844d3b10eb4ef6c93ffc144b8c967956c17059fcf75f2869f95f6"
  end

  def install
    bin.install "kopia"
  end
end
