# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230331.0.75837"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.75837/kopia-20230331.0.75837-macOS-x64.tar.gz"
    sha256 "d603cf5a2e7bca51a6b8cb8a37a449e4c790fcc95c27fd5f7758c393b3257e7f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.75837/kopia-20230331.0.75837-macOS-arm64.tar.gz"
    sha256 "165dc0bcfab57a62136cfe6cb3d6d8980389022d5a94830a6e93479f75d2e3a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.75837/kopia-20230331.0.75837-linux-x64.tar.gz"
    sha256 "22097619aeb73adb4b2b96903a94d9ecfb7c890bb09077b41f2294511d985784"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.75837/kopia-20230331.0.75837-linux-arm.tar.gz"
    sha256 "c8df76933ed7279b854e8a2cd1c7fbb0ae8a6cdd9198bbba072d1a5abe9596fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.75837/kopia-20230331.0.75837-linux-arm64.tar.gz"
    sha256 "ac9fd0157d6436b6d98238fbbe895d664874993baaa60198ea5742ae035c2c2a"
  end

  def install
    bin.install "kopia"
  end
end
