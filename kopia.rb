# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250501.0.55535"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.55535/kopia-20250501.0.55535-macOS-x64.tar.gz"
    sha256 "18656752a5752ab120cecda836076d32d93ed575153e796fddadca3b28728b0e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.55535/kopia-20250501.0.55535-macOS-arm64.tar.gz"
    sha256 "a379d07cc2f53ae8db421090a07b69ac0a2f0ad55f19d137f45e02a43daa97a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.55535/kopia-20250501.0.55535-linux-x64.tar.gz"
    sha256 "acff29b0428b3eccd12e531e9be57cdcef0bd92f4e3197c6c41ee3fbef4b92bd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.55535/kopia-20250501.0.55535-linux-arm.tar.gz"
    sha256 "39b62fcf78e72a5d2d5981d15c1ec9c2efe30a924061df949f71a75802b42ead"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.55535/kopia-20250501.0.55535-linux-arm64.tar.gz"
    sha256 "d1c4c5844161c5410756b0aee0bcd2ef3dbc62dc9efb092487b0e29c0de8b1a2"
  end

  def install
    bin.install "kopia"
  end
end
