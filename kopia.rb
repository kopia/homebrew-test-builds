# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251124.0.45455"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251124.0.45455/kopia-20251124.0.45455-macOS-x64.tar.gz"
    sha256 "897b349d68e2d88f8561b7aa687d29a7725dba49056b2ce6935c81d92993372a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251124.0.45455/kopia-20251124.0.45455-macOS-arm64.tar.gz"
    sha256 "d6d2cbce222da3594a1b7ce5922ef7f86dbe9d096fadfdd113ae7b236ba658ac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251124.0.45455/kopia-20251124.0.45455-linux-x64.tar.gz"
    sha256 "fbb5ae4e3aecfe3e4dd4d0048a25187dd61496b88f180b24ff3dfec5502dedc7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251124.0.45455/kopia-20251124.0.45455-linux-arm.tar.gz"
    sha256 "c47b2942fdf6c674ef4fc62f22aa821b8c7fa8f344edbedace4726d8c7e4812e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251124.0.45455/kopia-20251124.0.45455-linux-arm64.tar.gz"
    sha256 "0b155d6c3fccd38c6f702433a9359e13e7f79093c9ccac541a4d65d504315c4d"
  end

  def install
    bin.install "kopia"
  end
end
