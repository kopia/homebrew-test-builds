# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240513.0.213650"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.213650/kopia-20240513.0.213650-macOS-x64.tar.gz"
    sha256 "0f87aceb381fa0e9bfb8647b448b9c119aecd6feda554ee1cb657bfab8aeebdc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.213650/kopia-20240513.0.213650-macOS-arm64.tar.gz"
    sha256 "30459350d9efaa1dc33ee9bf00d26defb4e355c8fbe03144554414b1d8f8515c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.213650/kopia-20240513.0.213650-linux-x64.tar.gz"
    sha256 "a7a1ec19bd1f9957529bb8d452923307f388ca11de42b03e6758194a83e4aee0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.213650/kopia-20240513.0.213650-linux-arm.tar.gz"
    sha256 "37b369e96348f1f92792f8e3052dbe61268180c3c131f78e765b97fb4ac864c9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.213650/kopia-20240513.0.213650-linux-arm64.tar.gz"
    sha256 "8dfeda30aa2e70f2944b8a4d5d2d6bdbd2f39e55495f4f78312263df1ae6bffd"
  end

  def install
    bin.install "kopia"
  end
end
