# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250422.0.43517"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250422.0.43517/kopia-20250422.0.43517-macOS-x64.tar.gz"
    sha256 "7c87972e2f21098d640a34cbdb32a5f5e90ae114c184a7ea82dd110240b43b69"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250422.0.43517/kopia-20250422.0.43517-macOS-arm64.tar.gz"
    sha256 "6c2be762b77a93f687233db613de458aa4c15043ca5d8415e0ac26b02229e4e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250422.0.43517/kopia-20250422.0.43517-linux-x64.tar.gz"
    sha256 "d27e0e6281684cd878fdd8f4101832b70b8fe44e3db415a67f7ddcfb7a7512ff"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250422.0.43517/kopia-20250422.0.43517-linux-arm.tar.gz"
    sha256 "cb19533a361c4ad732014df156748b8c1a3858f11ce093f93f0347b71a912a41"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250422.0.43517/kopia-20250422.0.43517-linux-arm64.tar.gz"
    sha256 "13661a939078ac88aa6d7020f404f47eaa3f5c139ad17800355f98e88e9c8dd6"
  end

  def install
    bin.install "kopia"
  end
end
