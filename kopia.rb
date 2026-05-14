# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260514.0.62148"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.62148/kopia-20260514.0.62148-macOS-x64.tar.gz"
    sha256 "7828bbef621f72ddf066bdbdc39376f8a79f8469ec65b97abd9c2962e8d9d609"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.62148/kopia-20260514.0.62148-macOS-arm64.tar.gz"
    sha256 "1ec6d6619129213f53e27d0449cfd1ce83e538e733713da02e3ff036577f6e81"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.62148/kopia-20260514.0.62148-linux-x64.tar.gz"
    sha256 "07999d4f1de8ab78bb537a16da2d623ebb7d6c9e79ad6a2cd43af83634c08c07"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.62148/kopia-20260514.0.62148-linux-arm.tar.gz"
    sha256 "2527717f0729aa29edf6dcf2b0c942be7bbadc5e1e1ce755af0d5c20526bdb63"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.62148/kopia-20260514.0.62148-linux-arm64.tar.gz"
    sha256 "de344d6d832a7e1b9dab7172dd4de0a00dc28f712ba411eef37268d18e550f0c"
  end

  def install
    bin.install "kopia"
  end
end
