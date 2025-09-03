# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250903.0.193546"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250903.0.193546/kopia-20250903.0.193546-macOS-x64.tar.gz"
    sha256 "b242dc013325e7bb162ff8e62973b45c43aa1d06b9c1ee45e42424ac88585bbd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250903.0.193546/kopia-20250903.0.193546-macOS-arm64.tar.gz"
    sha256 "85d11f1c02f086d700890ce2b03be787405696743fe24b1e9193827173cd3524"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250903.0.193546/kopia-20250903.0.193546-linux-x64.tar.gz"
    sha256 "181607b8a4d5d1fd46f4a8f3df2496d5dc84d6b6a1d9f133c8744d2fdc1610d3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250903.0.193546/kopia-20250903.0.193546-linux-arm.tar.gz"
    sha256 "29c5cb49327959b71713460b5a46c41bb53f90da0912baefc69014bcbd162802"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250903.0.193546/kopia-20250903.0.193546-linux-arm64.tar.gz"
    sha256 "30469bf7d0918a3d6e8dba3fc6eeb8b8f83dcee653b2b2d01cf16eac23409412"
  end

  def install
    bin.install "kopia"
  end
end
