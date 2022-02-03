# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.225316"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.225316/kopia-20220202.0.225316-macOS-x64.tar.gz"
    sha256 "8c77dfde126633ad79929872adc485320885713abc506d1c8dabbe8aff4c1b2a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.225316/kopia-20220202.0.225316-macOS-arm64.tar.gz"
    sha256 "45e8b2a8760c729ee4b1404044aa8f3e91cd0693b2a8c95d9b77fe46e685468c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.225316/kopia-20220202.0.225316-linux-x64.tar.gz"
    sha256 "c327cbd62b678ae150af28072a3788c312ce51f7814b36118104b7f91b15d988"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.225316/kopia-20220202.0.225316-linux-arm.tar.gz"
    sha256 "767c85642fdcdd40db62d09cf45b10269ce2f535a00841171f5e01a45c3d1b29"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.225316/kopia-20220202.0.225316-linux-arm64.tar.gz"
    sha256 "8ba1be92238eb278ae761eb857e5ccbe4b2e555b30ab6dc8a8c9642b0319e122"
  end

  def install
    bin.install "kopia"
  end
end
