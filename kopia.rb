# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251013.0.200931"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.200931/kopia-20251013.0.200931-macOS-x64.tar.gz"
    sha256 "06b3b6303d6a2fcd0e4f4424bc3ec5334c2598107b556a2ebd629dcd26149eeb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.200931/kopia-20251013.0.200931-macOS-arm64.tar.gz"
    sha256 "8d3511cc389db041037a6441c44d48362cdfda5c32b597dffdabf211482a2ee3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.200931/kopia-20251013.0.200931-linux-x64.tar.gz"
    sha256 "857ddd62e207ae596cf9aa027e530a2fb455c5c9b9f2e53a98e3a9b3a42543f2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.200931/kopia-20251013.0.200931-linux-arm.tar.gz"
    sha256 "e7b417f8ee6804532528175a1c6d35de54f85266c8f3d3bf992dd51c7a51303e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.200931/kopia-20251013.0.200931-linux-arm64.tar.gz"
    sha256 "c0adabf67523438a64cbfd0e56a292c83d25441bbaa83936c1b943a3462cd399"
  end

  def install
    bin.install "kopia"
  end
end
