# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250218.0.163022"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250218.0.163022/kopia-20250218.0.163022-macOS-x64.tar.gz"
    sha256 "f7e5e2dcd3d8e02a40dfff9da72eb91006cb9b7ad4af250f32b6a57331812e7b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250218.0.163022/kopia-20250218.0.163022-macOS-arm64.tar.gz"
    sha256 "d82ca8d3e9221ef647e02f01edf9bbc64238a21c8e6a0dd687fdfd0e8af0e3bb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250218.0.163022/kopia-20250218.0.163022-linux-x64.tar.gz"
    sha256 "cb08b37e3226c9d4b7d1bf69ff17f53a207ddb37c26ae8acffb926006065d662"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250218.0.163022/kopia-20250218.0.163022-linux-arm.tar.gz"
    sha256 "19b5c8bcbd07318b6436086238827cff9b337275f8000318d392ba0e15746ebc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250218.0.163022/kopia-20250218.0.163022-linux-arm64.tar.gz"
    sha256 "306dee10bc05e0faa9739445a34b04488287c062c8bfa622ff87846eb3ed09ee"
  end

  def install
    bin.install "kopia"
  end
end
