# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210920.0.64515"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210920.0.64515/kopia-20210920.0.64515-macOS-x64.tar.gz"
    sha256 "e89aa38351be22e546b67c630ba58c78a560c55ced2f7db78d5f8d0d1402a548"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210920.0.64515/kopia-20210920.0.64515-macOS-arm64.tar.gz"
    sha256 "140cfb245ebe4a358031e2ce121ed2058bae9c1f9ac0dfc142da35ac64e5ac9a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210920.0.64515/kopia-20210920.0.64515-linux-x64.tar.gz"
    sha256 "c0188be501896fbb19d7bb0309d6b279921906d4ae6b928d5aaa6efe766c288b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210920.0.64515/kopia-20210920.0.64515-linux-arm.tar.gz"
    sha256 "6332af01facb9396b4559c0b33adce6fb487fdee890287992f00b934c5ead3f3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210920.0.64515/kopia-20210920.0.64515-linux-arm64.tar.gz"
    sha256 "ead6c95632417a8d792c5b17c5d6fd07b542a1697e1e4b8bca16c319320de45c"
  end

  def install
    bin.install "kopia"
  end
end
