# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221024.0.190036"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221024.0.190036/kopia-20221024.0.190036-macOS-x64.tar.gz"
    sha256 "7b84dab05543a724fefffaceffdda5e069d473abbc53bc73da126da54132f74c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221024.0.190036/kopia-20221024.0.190036-macOS-arm64.tar.gz"
    sha256 "5e079d794a1b557a606a65dec89d19560d67d37eb5f1dfbbce27761443717625"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221024.0.190036/kopia-20221024.0.190036-linux-x64.tar.gz"
    sha256 "d843126987a1c67660c6a1bb73ba46c7050cec639e0006a285896f814070e567"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221024.0.190036/kopia-20221024.0.190036-linux-arm.tar.gz"
    sha256 "e0f36ec49fc5edcfd9f5cb5fc0bcab68c17ae2a3a1be0f1856fc746344c1177c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221024.0.190036/kopia-20221024.0.190036-linux-arm64.tar.gz"
    sha256 "b496997b281a522297a57ad848da4a910a418e83d5ca7b8cf300ed392f0fe8e8"
  end

  def install
    bin.install "kopia"
  end
end
