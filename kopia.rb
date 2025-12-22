# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251215.0.232403"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251215.0.232403/kopia-20251215.0.232403-macOS-x64.tar.gz"
    sha256 "931465ffcbbbb411ba72192e841081702a063b491bf243720059334307e1c46e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251215.0.232403/kopia-20251215.0.232403-macOS-arm64.tar.gz"
    sha256 "b3b2491ef9f83dbe9f94cbbfe4a79ae0dc083f7a851bc67ec3df356be78bc9fb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251215.0.232403/kopia-20251215.0.232403-linux-x64.tar.gz"
    sha256 "8bf537a6a5971e85569fb65fbf6433fb82df6a996bebb804a47d9b1b1e3ab963"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251215.0.232403/kopia-20251215.0.232403-linux-arm.tar.gz"
    sha256 "9aec071c809316439657b7ef22359eef015f38662c15792271e58f5eca6ea3cc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251215.0.232403/kopia-20251215.0.232403-linux-arm64.tar.gz"
    sha256 "a9a22a62126d08303fef139d4e9f6872017f2df2501c7803f48b4204091535d7"
  end

  def install
    bin.install "kopia"
  end
end
