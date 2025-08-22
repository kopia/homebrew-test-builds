# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250822.0.50727"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.50727/kopia-20250822.0.50727-macOS-x64.tar.gz"
    sha256 "f9706fb78a748886f7beebe3a09ff1fa008f1ef5e3b1e16d413e5fb166ef5687"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.50727/kopia-20250822.0.50727-macOS-arm64.tar.gz"
    sha256 "19743c396a3063182eb63194f4700736603b3ab367d39ecaaf15afccb3700b6f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.50727/kopia-20250822.0.50727-linux-x64.tar.gz"
    sha256 "d10ccaac9a1a03058f3a867d2b377e3b1425e14b9e81eb4511ccdd2a6bd1d620"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.50727/kopia-20250822.0.50727-linux-arm.tar.gz"
    sha256 "a7b46d2bfb19f42eb28f90f78da42caece72a5791ca56967c5f231d544969ba8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.50727/kopia-20250822.0.50727-linux-arm64.tar.gz"
    sha256 "f37c25ee2ed2dc40dac12cd57a5497fb714849f079fb7d7036495813592aac98"
  end

  def install
    bin.install "kopia"
  end
end
