# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240311.0.171632"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.171632/kopia-20240311.0.171632-macOS-x64.tar.gz"
    sha256 "6873f4869b87f0c4d6a938e411a73ac1bdb48ba4428bfc4b8252735685d6f66d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.171632/kopia-20240311.0.171632-macOS-arm64.tar.gz"
    sha256 "9b062e6889bbead1be39ea87f01841ee4a65ff2c139e1847b45ce630c013c283"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.171632/kopia-20240311.0.171632-linux-x64.tar.gz"
    sha256 "c9c77335f313db168f54f5f71948f20094adcb814d3d505d548080896520b4d3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.171632/kopia-20240311.0.171632-linux-arm.tar.gz"
    sha256 "e3973fe5af80062f4d19b3d57c51952c30bed8ab93702c4442349cd5490142c5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.171632/kopia-20240311.0.171632-linux-arm64.tar.gz"
    sha256 "80f9eba4a563ad49f18fd847f3d020e5c0e68e4917c96cbf506c4c5db4139541"
  end

  def install
    bin.install "kopia"
  end
end
