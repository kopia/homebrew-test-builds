# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220318.0.212706"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.212706/kopia-20220318.0.212706-macOS-x64.tar.gz"
    sha256 "f6b4107d1e5a800d287e97a698b1753a35e73ab902780f54a58fe26464a8ed7f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.212706/kopia-20220318.0.212706-macOS-arm64.tar.gz"
    sha256 "93aa2815a8b7b45e5f61063dd50f24edf39ad1584c26b84f41ee819335749fb1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.212706/kopia-20220318.0.212706-linux-x64.tar.gz"
    sha256 "8545d8408e32db2f6f8713e4fdd3f858cdcda39f53b2c1c2144cb6399a8d12a2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.212706/kopia-20220318.0.212706-linux-arm.tar.gz"
    sha256 "75acfade7e185e9bd3f1ea37dde6a21d5975eba8f1014c1fc0263b05a3564334"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220318.0.212706/kopia-20220318.0.212706-linux-arm64.tar.gz"
    sha256 "abc5bca0e6f8e92e20797e9a9462edb8dfd08ce6eff4c2b78957a86164dd5075"
  end

  def install
    bin.install "kopia"
  end
end
