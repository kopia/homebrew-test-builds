# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220322.0.203936"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.203936/kopia-20220322.0.203936-macOS-x64.tar.gz"
    sha256 "3f8dbaef8e6e32040031dbf603b69218a300a7f9383488f54a19d68d46a0ea4a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.203936/kopia-20220322.0.203936-macOS-arm64.tar.gz"
    sha256 "8ed052934f0d28084cbe2b893c50c826b8eefb6e0bc2a8158e3baf188e61743c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.203936/kopia-20220322.0.203936-linux-x64.tar.gz"
    sha256 "72b2687e13f2e00b847fee7b0ca0232847fe16e1fba95ba03f2de9bf471879e5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.203936/kopia-20220322.0.203936-linux-arm.tar.gz"
    sha256 "36342353b7d16bbdf00a22373a9f0e37f07121e5973dd6bb12ddd74dfacc55a2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220322.0.203936/kopia-20220322.0.203936-linux-arm64.tar.gz"
    sha256 "4a9d7e6bbde1ead0cbeefdc943b31b1265282fab2a02df75223a73ed2001cbca"
  end

  def install
    bin.install "kopia"
  end
end
