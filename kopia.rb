# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.151218"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.151218/kopia-20250602.0.151218-macOS-x64.tar.gz"
    sha256 "95604cfd10fd6dd7a152d61dd01751146d8b21fe3d725436eb8d026f0603539d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.151218/kopia-20250602.0.151218-macOS-arm64.tar.gz"
    sha256 "be441ecbc7d519a08057e97468f2baffe04a6f560a3e622dfa7e86b49fe519f3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.151218/kopia-20250602.0.151218-linux-x64.tar.gz"
    sha256 "1646c99f4b06cd2b9272bc87bef4bd975e7485fc2c3d7f34787d6930f6b423b5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.151218/kopia-20250602.0.151218-linux-arm.tar.gz"
    sha256 "9b5e642d02c8a3a23836036096043e85f9d02e794e8d733a4a1b197a308c3f4a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.151218/kopia-20250602.0.151218-linux-arm64.tar.gz"
    sha256 "3e7787ac36ba5ddffba2d9ddeba4f95c29f90ee098cf09e0c01b0963e0080eb7"
  end

  def install
    bin.install "kopia"
  end
end
