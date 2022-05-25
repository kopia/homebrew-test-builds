# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220525.0.11755"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.11755/kopia-20220525.0.11755-macOS-x64.tar.gz"
    sha256 "071d7b0bd0e213ae6e0c440107cff68789de60a4593b27c2583adaf48393fd41"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.11755/kopia-20220525.0.11755-macOS-arm64.tar.gz"
    sha256 "187444e7c8b8ab332bb394b01bf5be657c8d5d759443bb122a9ee34c7a5ab385"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.11755/kopia-20220525.0.11755-linux-x64.tar.gz"
    sha256 "f49fb38259a8ef529e1a3a454703be1e168ae121bdfaa7f8cd4cda40b43bb86f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.11755/kopia-20220525.0.11755-linux-arm.tar.gz"
    sha256 "81210c0a9d391c84f2c43ab3f34b5c147e2bf223b049876d27afec6f58745350"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.11755/kopia-20220525.0.11755-linux-arm64.tar.gz"
    sha256 "135af10cba87947a731ca8071fc0c55c1de4e13d7a62e8acd832da30ac0c7624"
  end

  def install
    bin.install "kopia"
  end
end
