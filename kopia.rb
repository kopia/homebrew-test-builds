# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220326.0.222405"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.222405/kopia-20220326.0.222405-macOS-x64.tar.gz"
    sha256 "0136d5ad6a7ef976638c6ed6bcc7c51804bf68a5d933d3a84f44e38e14d547c4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.222405/kopia-20220326.0.222405-macOS-arm64.tar.gz"
    sha256 "7fe2ef0e999d686df2eedf6c6b5b206daee2f4e983d7ad3422770751f701ec71"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.222405/kopia-20220326.0.222405-linux-x64.tar.gz"
    sha256 "b737f3660a0b9469c9aeb37c4a674a39d4bfff09c301d0963c672174debf1e0b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.222405/kopia-20220326.0.222405-linux-arm.tar.gz"
    sha256 "744f0d4e3391e5dba46c79b653c4c9fd658b3824281d46d43447a62920ba3665"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.222405/kopia-20220326.0.222405-linux-arm64.tar.gz"
    sha256 "e92160a9501f954d971dd3b139a29a5a050f2562eeb7c19d5c237ed08c24c0b1"
  end

  def install
    bin.install "kopia"
  end
end
