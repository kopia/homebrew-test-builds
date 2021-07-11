# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.220902"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220902/kopia-20210710.0.220902-macOS-x64.tar.gz"
    sha256 "31a280123e7d5ae880ad928d30d609a78f7164bd68c6774994a8ee4fcf40177c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220902/kopia-20210710.0.220902-macOS-arm64.tar.gz"
    sha256 "42139c16bde1bea168c8ddd1dfd9e27f3e79387986aa4733d04d35a207ef414e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220902/kopia-20210710.0.220902-linux-x64.tar.gz"
    sha256 "43b5dfb838286a35c19e26668064faedac555102ef67d830664bed2bc8b4d476"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220902/kopia-20210710.0.220902-linux-arm.tar.gz"
    sha256 "a3a6e556a92772fc699e09b2c0f44c8411ee55a2267048796c3c8836dcaf2124"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220902/kopia-20210710.0.220902-linux-arm64.tar.gz"
    sha256 "766b281b0e6a18b868842eacda6b7da1196094995cf36914465fff970f8f5075"
  end

  def install
    bin.install "kopia"
  end
end
