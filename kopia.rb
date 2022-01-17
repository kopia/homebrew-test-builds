# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220116.0.153917"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220116.0.153917/kopia-20220116.0.153917-macOS-x64.tar.gz"
    sha256 "5bf7e82d420a111086fc2ac3e158032af9be1f17dbcfe1ca0cd33b6eeda3abcc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220116.0.153917/kopia-20220116.0.153917-macOS-arm64.tar.gz"
    sha256 "7af561d2bf6d505bbe1ddcbf4db43f7634c1a015f2285be8341975c3938b60bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220116.0.153917/kopia-20220116.0.153917-linux-x64.tar.gz"
    sha256 "e1b8861aa124d6bdcf2de8d8443f59ee78f99a8b81888519ae44cd5d75705fad"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220116.0.153917/kopia-20220116.0.153917-linux-arm.tar.gz"
    sha256 "168361421fa45383c00da8001575e79dd72320afc594c16db2a88e663ed43372"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220116.0.153917/kopia-20220116.0.153917-linux-arm64.tar.gz"
    sha256 "22baa5ce07c27e1a889f165fa57a9743d4c619eec7d40c915502beec9e3bd579"
  end

  def install
    bin.install "kopia"
  end
end
