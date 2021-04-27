# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210427.0.11149"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.11149/kopia-20210427.0.11149-macOS-x64.tar.gz"
    sha256 "3aad85a4cbf314fb42759773006a807dbe553e9f022c09a55062c7fcc8a83205"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.11149/kopia-20210427.0.11149-macOS-arm64.tar.gz"
    sha256 "730cdcb3ce0e9d29ac175994cabd48b7fefc557dcc4c171cec52eb03a1149fb9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.11149/kopia-20210427.0.11149-linux-x64.tar.gz"
    sha256 "7c27936fdba2636eefd2a447df46e0abb1ee6ab911091ec65bd0393a2ec85bed"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.11149/kopia-20210427.0.11149-linux-arm.tar.gz"
    sha256 "91070c726d841dcca2de1458484e1faaa26f2cf8dff86adfd056e34c5fd97a86"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.11149/kopia-20210427.0.11149-linux-arm64.tar.gz"
    sha256 "e6516ccb872b8e04f206b96c67c07711479e1b779185786c67cfeb80b66775a7"
  end

  def install
    bin.install "kopia"
  end
end
