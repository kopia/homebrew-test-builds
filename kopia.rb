# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250502.0.163608"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.163608/kopia-20250502.0.163608-macOS-x64.tar.gz"
    sha256 "bf7b82cc4f741049a7457cf8de7148f556799399e3ecf0cf433204a38091ae7e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.163608/kopia-20250502.0.163608-macOS-arm64.tar.gz"
    sha256 "e3932f5003fba41c8e5ecddbf7cd50fcb049ce1fd5e30409f9285ba0a616f745"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.163608/kopia-20250502.0.163608-linux-x64.tar.gz"
    sha256 "f2b42eac8db3d318e859028b993ea120d854f446917e327e3c42949f661ecf3a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.163608/kopia-20250502.0.163608-linux-arm.tar.gz"
    sha256 "0f454e5d8d42e338f17540784e70dfe1ca51ea8d6d6f5a1f783df2d5df31418d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.163608/kopia-20250502.0.163608-linux-arm64.tar.gz"
    sha256 "7581d22a7f85af629805f679e726a2ce30051487ba4b7af997d6b2daf63ad87c"
  end

  def install
    bin.install "kopia"
  end
end
