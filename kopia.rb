# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230327.0.123716"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.123716/kopia-20230327.0.123716-macOS-x64.tar.gz"
    sha256 "6b6ebdafc95a85c5eb8d7d7515adc3a43e82d8f43e296b89404de2aaac80ac30"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.123716/kopia-20230327.0.123716-macOS-arm64.tar.gz"
    sha256 "5e52901961a1c9114028019ceca8749a3f7c3d0b1537bcc197ffa73f0472370e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.123716/kopia-20230327.0.123716-linux-x64.tar.gz"
    sha256 "6ea318a58449e8d93ef7d0b35a23aa1db40c41a1a8a7022688df17a8342b122a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.123716/kopia-20230327.0.123716-linux-arm.tar.gz"
    sha256 "fc4f2cc66eca8371d80affa5c9518e42c4192a742ef0f743d9bfdd90db6c837e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.123716/kopia-20230327.0.123716-linux-arm64.tar.gz"
    sha256 "5c20ad80f2344e3ba568f68b3e201a04be62d9f8a626f47ac38be4bbd4f1f722"
  end

  def install
    bin.install "kopia"
  end
end
