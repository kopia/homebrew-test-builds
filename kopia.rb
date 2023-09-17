# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230917.0.121310"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.121310/kopia-20230917.0.121310-macOS-x64.tar.gz"
    sha256 "d43f4025e1f03fce416032725b784793f3e76f70a7ed52be15b205ad5cee4d8e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.121310/kopia-20230917.0.121310-macOS-arm64.tar.gz"
    sha256 "eb6305d8f942ce535f79452a2c86c38a8bb56ecac16c2b9eeb6f23501ebdaab0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.121310/kopia-20230917.0.121310-linux-x64.tar.gz"
    sha256 "636259a6f4e7300b08e20f198979e1262d2cb87e4b01e3ec5c8e3db209b9220f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.121310/kopia-20230917.0.121310-linux-arm.tar.gz"
    sha256 "de0cdf019ee9c89be4e3c6800ac93d852eeb00409de52eda4c98c5d3cde147d1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.121310/kopia-20230917.0.121310-linux-arm64.tar.gz"
    sha256 "643f2968a872f9c2b2797215c381cecd422823d59faa9a5371b4e2dde1ad2877"
  end

  def install
    bin.install "kopia"
  end
end
