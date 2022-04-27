# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220427.0.1331"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220427.0.1331/kopia-20220427.0.1331-macOS-x64.tar.gz"
    sha256 "07c9f68e70dff07a41ee5da99c1113523ff8cabf73b55ebc8a9d91f724475e71"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220427.0.1331/kopia-20220427.0.1331-macOS-arm64.tar.gz"
    sha256 "207e11943d159350c84aaf0fe72b5f42243249f1a0d1d6ad945e6c9fbf7a6d74"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220427.0.1331/kopia-20220427.0.1331-linux-x64.tar.gz"
    sha256 "f720ab164a1a8de703f44373ad80defe7128ab5083c7d997f42f003f1075fbc0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220427.0.1331/kopia-20220427.0.1331-linux-arm.tar.gz"
    sha256 "fc77ee437c537ba0b75df7fc3d6c019596ade8cf4db2a43e4b932560ffe5ce5a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220427.0.1331/kopia-20220427.0.1331-linux-arm64.tar.gz"
    sha256 "4a7fe717c502c8a37a80791be1329795ee9fccc84d9565824ba5322b15fd08fa"
  end

  def install
    bin.install "kopia"
  end
end
