# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220604.0.63625"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.63625/kopia-20220604.0.63625-macOS-x64.tar.gz"
    sha256 "6fc7a521001651b5cd6f294468a9fe96f39670ec9c890a189a6b1945ee525c3b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.63625/kopia-20220604.0.63625-macOS-arm64.tar.gz"
    sha256 "8938d61e30001d001037babec6f6fd319e1224bf37178bf39c486be68935cee5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.63625/kopia-20220604.0.63625-linux-x64.tar.gz"
    sha256 "a3b3d3d0e49dab3e19b8d75fea3df72c39e715ad75613d339efc774c0affad7f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.63625/kopia-20220604.0.63625-linux-arm.tar.gz"
    sha256 "40756e49d8db217a388e5d86cc94a0a68c3f95a100d2f096b6860115cd1a3cfe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.63625/kopia-20220604.0.63625-linux-arm64.tar.gz"
    sha256 "047d5d6b94cfe0e1e1ad8dbc393c7a26b85653bb692bf550248f4d56aa7d542b"
  end

  def install
    bin.install "kopia"
  end
end
