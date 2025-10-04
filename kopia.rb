# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251004.0.22054"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251004.0.22054/kopia-20251004.0.22054-macOS-x64.tar.gz"
    sha256 "388a0807012f5e2ea60a038d049e2749bf23fb23fba823dc994522a60315977f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251004.0.22054/kopia-20251004.0.22054-macOS-arm64.tar.gz"
    sha256 "7c24139e1035ade48561c457bbbb786ae61034e30d16eb9eeca4057f24c7a28a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251004.0.22054/kopia-20251004.0.22054-linux-x64.tar.gz"
    sha256 "369fa2c9f6bbb09ade12daa725316897f24b132c4341acfeb4451d638c6bf53d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251004.0.22054/kopia-20251004.0.22054-linux-arm.tar.gz"
    sha256 "0ba79521ec1fb2362dbacfe6e992ca4e6632a880c16ebee95216704a1dcff43c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251004.0.22054/kopia-20251004.0.22054-linux-arm64.tar.gz"
    sha256 "30463490269760fcd3691f7aa7ec9bea325a701273630ec2d14a20ef3adcfd93"
  end

  def install
    bin.install "kopia"
  end
end
