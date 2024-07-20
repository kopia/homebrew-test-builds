# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240719.0.225823"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.225823/kopia-20240719.0.225823-macOS-x64.tar.gz"
    sha256 "a0694f174714ed211a3f60e12cdfd5f83b3dbb44c933c494325879754824ef1d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.225823/kopia-20240719.0.225823-macOS-arm64.tar.gz"
    sha256 "306aa82add6b4fed903d0a3139f69d7000f75c08a155c519f12acb30b83ffc8e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.225823/kopia-20240719.0.225823-linux-x64.tar.gz"
    sha256 "7df64345e49529dc358cc7e21112a05b129fc98b0dadcd3d9885e993f3aa550d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.225823/kopia-20240719.0.225823-linux-arm.tar.gz"
    sha256 "ec59ba27eb203e1b010e94d84dc669ce4e2355471ce30576fde1b2f25c890484"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.225823/kopia-20240719.0.225823-linux-arm64.tar.gz"
    sha256 "c1baca7f9b13730e872d606929cd208f588c5858449c90ac24c84b23f40d350a"
  end

  def install
    bin.install "kopia"
  end
end
