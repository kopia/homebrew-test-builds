# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211011.0.221811"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211011.0.221811/kopia-20211011.0.221811-macOS-x64.tar.gz"
    sha256 "b6e83e6f8a5c82141342ea6ea842166a8cceecef6c41c192328c69f84d623c11"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211011.0.221811/kopia-20211011.0.221811-macOS-arm64.tar.gz"
    sha256 "918f0444ab4ec2ab729c3d6e8a7b28fd8bd28adfebc1481670c5cb9ab9bd5e2e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211011.0.221811/kopia-20211011.0.221811-linux-x64.tar.gz"
    sha256 "b97d543a9cbebdfe167ff8c046f12384b4246519a3f8e18b3899c4e316f93108"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211011.0.221811/kopia-20211011.0.221811-linux-arm.tar.gz"
    sha256 "923e31937f7261941f3424bce96931ba5cf4d588fc992b89f7b1fb19dfbb8b1f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211011.0.221811/kopia-20211011.0.221811-linux-arm64.tar.gz"
    sha256 "11552ed70d62d7dcf23cad427050a3e336612773e197914446e19a66bc083708"
  end

  def install
    bin.install "kopia"
  end
end
