# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250412.0.145132"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250412.0.145132/kopia-20250412.0.145132-macOS-x64.tar.gz"
    sha256 "b7872b8327b448c849941af994462b7fb916c8e7272afb2db5f96e91fc051804"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250412.0.145132/kopia-20250412.0.145132-macOS-arm64.tar.gz"
    sha256 "5290fab9585e304a1255ad9423f08643c6f3b2c66be7b7b28dd95a3e33e3e128"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250412.0.145132/kopia-20250412.0.145132-linux-x64.tar.gz"
    sha256 "3f3322176c6cfad6b7d5714327c6cf109225a94449c55f56cf9f40923ec791af"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250412.0.145132/kopia-20250412.0.145132-linux-arm.tar.gz"
    sha256 "a021fd4344aeb82412f16471f92f6e65f869f4a9ec5e799b584719122b44da05"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250412.0.145132/kopia-20250412.0.145132-linux-arm64.tar.gz"
    sha256 "5d95d9be96ec6e9714001d3c8105deed5256c550a0fb9b60d47999ff5dc3bb03"
  end

  def install
    bin.install "kopia"
  end
end
