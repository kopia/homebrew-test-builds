# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220819.0.233524"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.233524/kopia-20220819.0.233524-macOS-x64.tar.gz"
    sha256 "2721052249b82008c5cb5e4eb0a37de8a1a4976ae57781e31221993937d1bfac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.233524/kopia-20220819.0.233524-macOS-arm64.tar.gz"
    sha256 "eb4da9633f63c4d3c21cae2d3f6703da468e7a171e4449c1ecc87cb3ecf79ac9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.233524/kopia-20220819.0.233524-linux-x64.tar.gz"
    sha256 "b1c26eab75f543f30c620caabbc66e67dc0519b69a2529e07ddaae8d1047887c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.233524/kopia-20220819.0.233524-linux-arm.tar.gz"
    sha256 "9986a8b70556c0cbb01387732e9a379583fec097a60d353cd61b2916b99926f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.233524/kopia-20220819.0.233524-linux-arm64.tar.gz"
    sha256 "7624c1e1b0ff64192fc0eb09ec25e0cdae779256c18694ef4ec95f9d8fcef110"
  end

  def install
    bin.install "kopia"
  end
end
