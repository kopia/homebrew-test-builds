# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220201.0.193205"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193205/kopia-20220201.0.193205-macOS-x64.tar.gz"
    sha256 "9979dde359c8d04eefe37427f2893658e96c99330eeae6ca0290160c275739ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193205/kopia-20220201.0.193205-macOS-arm64.tar.gz"
    sha256 "aa1a3489ac6fb05f04335836b956e4f43ed4d9d4dafdc37dea91aabae9167f46"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193205/kopia-20220201.0.193205-linux-x64.tar.gz"
    sha256 "034c8511c9326779854ea38d0f0da00f4912c8883d9d89c8b960f2f9aae0c491"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193205/kopia-20220201.0.193205-linux-arm.tar.gz"
    sha256 "140985e8d6d10908923222d36df65f5965046528710e4e2e4857d925131c9d4b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193205/kopia-20220201.0.193205-linux-arm64.tar.gz"
    sha256 "b7e31a7353256c70c547ae3d659acf0cb67d0593bfb979aadcb86b0d600635d8"
  end

  def install
    bin.install "kopia"
  end
end
