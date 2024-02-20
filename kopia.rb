# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240220.0.144823"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.144823/kopia-20240220.0.144823-macOS-x64.tar.gz"
    sha256 "81eac04019dba03ff0ca97a8e62048cdad330cfcfe926e0ec01f14cc28298306"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.144823/kopia-20240220.0.144823-macOS-arm64.tar.gz"
    sha256 "0ace647d0f14a6d44bea4f155bc36c9a7017f40b78a5d4cb44571664c0a6e8cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.144823/kopia-20240220.0.144823-linux-x64.tar.gz"
    sha256 "4477736f6efe9cb2dd87ffefe050a1a9f23c6c7c08737730707ff3a859516157"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.144823/kopia-20240220.0.144823-linux-arm.tar.gz"
    sha256 "b41d50e2d4216085b34e80612d1f3f2dbb433b55c6d0edf5cb26f082bcaa7116"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.144823/kopia-20240220.0.144823-linux-arm64.tar.gz"
    sha256 "e45372ccccbf6ff39f78257a36f1e228f07fa75e5d51e0e4cd7fb33d7efe38dd"
  end

  def install
    bin.install "kopia"
  end
end
