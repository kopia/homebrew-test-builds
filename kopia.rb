# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211213.0.142510"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.142510/kopia-20211213.0.142510-macOS-x64.tar.gz"
    sha256 "bbeebda3017fc9070db144db7da5f829f873e8f1f88f4552445b6253d4f6147b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.142510/kopia-20211213.0.142510-macOS-arm64.tar.gz"
    sha256 "45cf3127825f6c381f1d75f88669906365613283f4fbe8d877425a485a27496b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.142510/kopia-20211213.0.142510-linux-x64.tar.gz"
    sha256 "71406a14b878e90a9a7a66b7e96e5341f51f6847a894b3662e1e2321ba1133d5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.142510/kopia-20211213.0.142510-linux-arm.tar.gz"
    sha256 "23ee733419a6713745da549c6a8ea6c1340a7ed413666c2e7987b6289057c40c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.142510/kopia-20211213.0.142510-linux-arm64.tar.gz"
    sha256 "93d69dedbb4c73d5313f522189f21844e874a5d7069bf58651c167037bc19227"
  end

  def install
    bin.install "kopia"
  end
end
