# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.212621"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.212621/kopia-20210710.0.212621-macOS-x64.tar.gz"
    sha256 "4c92876a68bcab9b0c93a77c2589702fa29b1f4761aef48dc3492330f2ec31f7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.212621/kopia-20210710.0.212621-macOS-arm64.tar.gz"
    sha256 "c96964c20ea3791d14901024479e3af1da2bb7aa69bc491b3782ebd4bd3c15cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.212621/kopia-20210710.0.212621-linux-x64.tar.gz"
    sha256 "c7f6ecd35153ccc6a2e323237e3748519c9d6294d9f85ff0450fbf1e39fb6038"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.212621/kopia-20210710.0.212621-linux-arm.tar.gz"
    sha256 "0c17bca997979e5047ba0a9d4b85cea8172ed6ea0ea947473c94a21e48713aa0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.212621/kopia-20210710.0.212621-linux-arm64.tar.gz"
    sha256 "3cfbc09873bff5e172d548b5a820f929888d3debd1c034c47704263f6654a68b"
  end

  def install
    bin.install "kopia"
  end
end
