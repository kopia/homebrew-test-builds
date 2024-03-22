# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240321.0.180313"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240321.0.180313/kopia-20240321.0.180313-macOS-x64.tar.gz"
    sha256 "292199ba6b7ba3f529f11081ce2fcf41cc6442d9b22cb9a7a7b88ee3824270d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240321.0.180313/kopia-20240321.0.180313-macOS-arm64.tar.gz"
    sha256 "a9a64713ed8ffab2dd69b921c04b22f4e5cafbffd9657f451e9c8b24b6b793fd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240321.0.180313/kopia-20240321.0.180313-linux-x64.tar.gz"
    sha256 "f51a7b6158f457dd4c853eca88a1d2e11f8c5e180cf89d7231e26767d4a6a24c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240321.0.180313/kopia-20240321.0.180313-linux-arm.tar.gz"
    sha256 "8a190a5b830a060a9eb27dabca55d2a83a90ed4ce90758912addb416e92124e8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240321.0.180313/kopia-20240321.0.180313-linux-arm64.tar.gz"
    sha256 "6b5da94ac5b84066c58c194ca74889da89f58bce928ef68a53dfb6f65a19e1e3"
  end

  def install
    bin.install "kopia"
  end
end
