# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210715.0.191106"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.191106/kopia-20210715.0.191106-macOS-x64.tar.gz"
    sha256 "1d060c4fe7a8f2f9172a1620cfd7a86dbec95fcefe8ffea0e4148ac95a37149e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.191106/kopia-20210715.0.191106-macOS-arm64.tar.gz"
    sha256 "6ba8e9323ab4c813c25928c1d1f0cd5b9cadfc5fe444c0e3dbe55d43ad63d00f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.191106/kopia-20210715.0.191106-linux-x64.tar.gz"
    sha256 "e981118c3b0296720740acfda599520dfd5984d0d5050c887cc01dcee0702fdc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.191106/kopia-20210715.0.191106-linux-arm.tar.gz"
    sha256 "62ba403fc0eabf7362b6e3dfb2f7f4b1c339f2560afcc08bd7a2e405c9671031"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.191106/kopia-20210715.0.191106-linux-arm64.tar.gz"
    sha256 "01989aac466cbab86cfcaa33cb80f668fd7e252bc58be348f8e80d9dba78f2be"
  end

  def install
    bin.install "kopia"
  end
end
