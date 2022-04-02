# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220401.0.193839"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.193839/kopia-20220401.0.193839-macOS-x64.tar.gz"
    sha256 "a82cd9c0ce89219722d672fbe33076123b4a5301828dd3870f8075b32328d6b2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.193839/kopia-20220401.0.193839-macOS-arm64.tar.gz"
    sha256 "6d889c0715b57170305d9abded45695d125259b3f30ce1bfb885fd1eec9fef61"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.193839/kopia-20220401.0.193839-linux-x64.tar.gz"
    sha256 "5f617be418ceda0991111b88a812d1a6d4b04646665a1c01f1a681674ab6369f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.193839/kopia-20220401.0.193839-linux-arm.tar.gz"
    sha256 "9193bd3895a3142d55000f067df597a7b3f405173e78d28cc753b5ed102b5d0a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.193839/kopia-20220401.0.193839-linux-arm64.tar.gz"
    sha256 "c0200509bf584dd2c759de1740d2a9a667f56bb1879e613b29bfc17acfc00fb7"
  end

  def install
    bin.install "kopia"
  end
end
