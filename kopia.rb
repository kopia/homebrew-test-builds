# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240529.0.203157"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.203157/kopia-20240529.0.203157-macOS-x64.tar.gz"
    sha256 "4fd7a5787c84ced325ef5de8fb7a915a5cae3cd575573cc5e199d03c4710cf6f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.203157/kopia-20240529.0.203157-macOS-arm64.tar.gz"
    sha256 "858406707bde7805554fbe1deb890a5cefdeec07ada30806cc0ab92cd8caf308"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.203157/kopia-20240529.0.203157-linux-x64.tar.gz"
    sha256 "4f20a3902698cbecf30c0a25576bd4000bf44eb7409634becf68e6179403cc19"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.203157/kopia-20240529.0.203157-linux-arm.tar.gz"
    sha256 "97c4c7495630170a76f9de06979be606b683c4e645e3b0600c8651088fa41982"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.203157/kopia-20240529.0.203157-linux-arm64.tar.gz"
    sha256 "dea40fcb007673d6ffcfc871e0a13996e3d487172a442cd0b4842c6a3164e1e6"
  end

  def install
    bin.install "kopia"
  end
end
