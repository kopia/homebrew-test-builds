# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220308.0.213211"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.213211/kopia-20220308.0.213211-macOS-x64.tar.gz"
    sha256 "96e6a316c4593f627aab6f80fb60ba1b6347320ec491670f6c569816061efab0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.213211/kopia-20220308.0.213211-macOS-arm64.tar.gz"
    sha256 "0157e673bfd46c9f3eb78486b30be9b0c862344d95d13c8ff7765e03a935fc34"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.213211/kopia-20220308.0.213211-linux-x64.tar.gz"
    sha256 "b68c461a6404337a25136aebba31892e68fda4c62d48bb91ce1ba7e331efe769"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.213211/kopia-20220308.0.213211-linux-arm.tar.gz"
    sha256 "20650e69fcc7643f8298ac1a65248b8091ae56e3b039392e12eb4a1698fd86e8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.213211/kopia-20220308.0.213211-linux-arm64.tar.gz"
    sha256 "652eae9136c030e13580a905405e85a1bc36ebcf4a33da58d8293386157b4b24"
  end

  def install
    bin.install "kopia"
  end
end
