# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221229.0.232524"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.232524/kopia-20221229.0.232524-macOS-x64.tar.gz"
    sha256 "2539e25a1d31ad48c0d59fa757d295ed2464528f8db4f2b15ebdcfba2d31901d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.232524/kopia-20221229.0.232524-macOS-arm64.tar.gz"
    sha256 "54a111c080de9c83799fe098ab4eb24439182d8ebd5230e08801f0ea4cf2ad9c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.232524/kopia-20221229.0.232524-linux-x64.tar.gz"
    sha256 "0072fcf4d3050aa09f578fdfc65e5e25a1c770eacff7b5b9ea5f9a345c3f8c8d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.232524/kopia-20221229.0.232524-linux-arm.tar.gz"
    sha256 "0a4bab7eb9b31a13d8a2e31c500550f19f1f25ceab558532b66b844532e585e6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.232524/kopia-20221229.0.232524-linux-arm64.tar.gz"
    sha256 "43802c4e5f84712a2789b49650beb90cf1f448d6a4af15356ecea5227b832c76"
  end

  def install
    bin.install "kopia"
  end
end
