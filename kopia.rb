# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.195620"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.195620/kopia-20210710.0.195620-macOS-x64.tar.gz"
    sha256 "aec194d104454b93bfc50358c443676598686c45c3fa4fc38e14f266dec6b99b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.195620/kopia-20210710.0.195620-macOS-arm64.tar.gz"
    sha256 "8658b60be19f79271e308818cf58fd31a1ee639696307c966ce3307836436173"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.195620/kopia-20210710.0.195620-linux-x64.tar.gz"
    sha256 "e76755feb9cf6c3bc113778d4553eee2b01f428e22a147eba51a938ba3701606"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.195620/kopia-20210710.0.195620-linux-arm.tar.gz"
    sha256 "7d7fab11c7fbe90dc2d62155fc703e019cf38aaa9c966a2cc3a28c2a735ddb80"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.195620/kopia-20210710.0.195620-linux-arm64.tar.gz"
    sha256 "98c354ca9169f6606be47c56f96b8af7a4601f215090fef89c3c401d592b3713"
  end

  def install
    bin.install "kopia"
  end
end
