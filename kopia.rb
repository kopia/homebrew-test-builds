# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211222.0.223017"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.223017/kopia-20211222.0.223017-macOS-x64.tar.gz"
    sha256 "e53966b84188201ee5de3127e406b0e40299cb64fa0c99ed86cfdcff9645ce0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.223017/kopia-20211222.0.223017-macOS-arm64.tar.gz"
    sha256 "461cdacf250262ad78f3bdf4d75f4847d348e61eebade10ea7ec5a3d5a5da20f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.223017/kopia-20211222.0.223017-linux-x64.tar.gz"
    sha256 "a76f7e30acc2b45922f839c2a1d6fe4f07c89a3be549361f07eff7b2db3b850c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.223017/kopia-20211222.0.223017-linux-arm.tar.gz"
    sha256 "e6e90460f89e3d545c602027cbeae607151404b5afe5a9cdee6d05b42caa04ea"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.223017/kopia-20211222.0.223017-linux-arm64.tar.gz"
    sha256 "cf565d16b977399ae28867a4d9dbef3fa95718790764ed672a5b9e4246d94e17"
  end

  def install
    bin.install "kopia"
  end
end
