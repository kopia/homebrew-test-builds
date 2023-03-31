# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230331.0.41914"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.41914/kopia-20230331.0.41914-macOS-x64.tar.gz"
    sha256 "39f3de50dbcb648c24424cb7a9081e718891229d10bc33b02fc4e82068dc481f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.41914/kopia-20230331.0.41914-macOS-arm64.tar.gz"
    sha256 "bc325e7d772c929402f06b38d01767762b3817365d2cc398230a5eae66063259"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.41914/kopia-20230331.0.41914-linux-x64.tar.gz"
    sha256 "3175c97b1ad03dc8f7dad77bd5373d2b48296cce6160c41556b67b632068e5d1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.41914/kopia-20230331.0.41914-linux-arm.tar.gz"
    sha256 "a1b74a0e6f1b8eb4d8a78ea835812becb149e907c5f11c514521a13ac4d81566"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.41914/kopia-20230331.0.41914-linux-arm64.tar.gz"
    sha256 "b97c00e1c55e43b771177ae4acc5fe6d03438b7e466b552cc555db7431709d88"
  end

  def install
    bin.install "kopia"
  end
end
