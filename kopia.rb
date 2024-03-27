# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240327.0.94124"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.94124/kopia-20240327.0.94124-macOS-x64.tar.gz"
    sha256 "704ac2eb22dfc159ddba4ec2d6a908ddc9f92e84c1da69e617b61ecde60773a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.94124/kopia-20240327.0.94124-macOS-arm64.tar.gz"
    sha256 "3da2a984dba6f15f42fcfa31acd029bc8aa88c86bca0d26cb9307fd6537d1dbe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.94124/kopia-20240327.0.94124-linux-x64.tar.gz"
    sha256 "22ff62f43a816e6e52d06af734662faa848a3d6a42060f17bd594c94594bb355"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.94124/kopia-20240327.0.94124-linux-arm.tar.gz"
    sha256 "9d8a79e97c5a3e12bd70193faf3c3e76f92ca22dc54b6f00bf9965c6f2670ded"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.94124/kopia-20240327.0.94124-linux-arm64.tar.gz"
    sha256 "032c3d363b9a379052149d30e6dee20a8ea777d97ee7b74f234814dfc882f5a1"
  end

  def install
    bin.install "kopia"
  end
end
