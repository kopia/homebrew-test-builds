# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230914.0.232815"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.232815/kopia-20230914.0.232815-macOS-x64.tar.gz"
    sha256 "6b9de182f92d8ee37d778b3e33c63d75dea6d5780afd311ce76083960764bcdb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.232815/kopia-20230914.0.232815-macOS-arm64.tar.gz"
    sha256 "0e0035450cb9960a118d488db43c94d2ddbda1bdb01116f3b4dae27c262db6cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.232815/kopia-20230914.0.232815-linux-x64.tar.gz"
    sha256 "bf400fa34a2ca8cf04b801b5612097aab7754693402d01beecfe0215259af043"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.232815/kopia-20230914.0.232815-linux-arm.tar.gz"
    sha256 "ae555e5489b61fa65c4d81a0a5978e5006ff3d7e02f245a7d70e71fbd386ab81"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.232815/kopia-20230914.0.232815-linux-arm64.tar.gz"
    sha256 "cb8236de592f46df799d13830ea656c4ead26deea92eb5ed0c34d5256295b7bc"
  end

  def install
    bin.install "kopia"
  end
end
