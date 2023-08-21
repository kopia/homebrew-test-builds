# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230821.0.152913"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.152913/kopia-20230821.0.152913-macOS-x64.tar.gz"
    sha256 "8a13209e21bbba9022faaa7c63d8b7bb5565cb6de9cadbc40f5aeb441649f80e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.152913/kopia-20230821.0.152913-macOS-arm64.tar.gz"
    sha256 "db411042b1e6f08c55cfc2c6b3968fe0d3c4e8a9a3b49b1f0d3629cc3d634ab7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.152913/kopia-20230821.0.152913-linux-x64.tar.gz"
    sha256 "3940b65039b05f13a2b99139a5a961f3d99e30bd62521a9fe0f99ae58f3fb93b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.152913/kopia-20230821.0.152913-linux-arm.tar.gz"
    sha256 "dd37766ef296accdabc6f944a267bc019fe6a7fbb01516521f47df2c2d7203a4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.152913/kopia-20230821.0.152913-linux-arm64.tar.gz"
    sha256 "dd94cc090f0e3d9d72f359250327bf6e11a6fffc8eced4c888bb79e76c7a1626"
  end

  def install
    bin.install "kopia"
  end
end
