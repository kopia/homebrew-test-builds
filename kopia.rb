# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250204.0.1210"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250204.0.1210/kopia-20250204.0.1210-macOS-x64.tar.gz"
    sha256 "cad66e4a780c254289286ca3b48976fe4ad42fe3d42881c548dcba72ce47fbe4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250204.0.1210/kopia-20250204.0.1210-macOS-arm64.tar.gz"
    sha256 "b1de114920493cc8c2f8f319bda37eb62a34a1543c3f044ca4a932f76cbf7157"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250204.0.1210/kopia-20250204.0.1210-linux-x64.tar.gz"
    sha256 "fc4410512b748b29d3275450e22ad3161ea0210d82428ef7755f3bf55d860ae7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250204.0.1210/kopia-20250204.0.1210-linux-arm.tar.gz"
    sha256 "42fdb2a3ae05d06d281a9db9adeb89e62d5eebf5c6fa542ac533a6d7541769d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250204.0.1210/kopia-20250204.0.1210-linux-arm64.tar.gz"
    sha256 "aff150484892e5eac161bb23e7f738bc9abf868161dd96bf28c5cb871c3e52c6"
  end

  def install
    bin.install "kopia"
  end
end
