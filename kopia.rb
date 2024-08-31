# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240831.0.132147"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240831.0.132147/kopia-20240831.0.132147-macOS-x64.tar.gz"
    sha256 "cd464aa1c4fb813ca5f3c5a2db78dbd4866a933015f92452a96845e9381f3ece"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240831.0.132147/kopia-20240831.0.132147-macOS-arm64.tar.gz"
    sha256 "a7ba3c98a59512190f91845d2dcb0fc9e35b6516874249a02aa725fef6063349"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240831.0.132147/kopia-20240831.0.132147-linux-x64.tar.gz"
    sha256 "9fc84bbcd110d3eafb100f0e579a74c7101b56712e3e34516e00372b852258ab"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240831.0.132147/kopia-20240831.0.132147-linux-arm.tar.gz"
    sha256 "a4402045ed25a3af02a8c7a325109ed28bfefc6eca6f98d1457d14e6cf40c7ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240831.0.132147/kopia-20240831.0.132147-linux-arm64.tar.gz"
    sha256 "cda8923a1c06c99b9f55c275aeaf9d82796bf6bc520ccf6b565d66cd39bf487a"
  end

  def install
    bin.install "kopia"
  end
end
