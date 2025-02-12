# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250211.0.194118"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250211.0.194118/kopia-20250211.0.194118-macOS-x64.tar.gz"
    sha256 "e3fbcb911c733664b0b273e23d6b076ea95a1cf878b7af34880a7e4eaab32ad4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250211.0.194118/kopia-20250211.0.194118-macOS-arm64.tar.gz"
    sha256 "132ab160a57b04562f29e26c030ca060156b37b3e564b322ccabca28934285f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250211.0.194118/kopia-20250211.0.194118-linux-x64.tar.gz"
    sha256 "4b3c5196a7f5294a133512b48c090d699719b9ea334309cc352fe3f9fc22a913"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250211.0.194118/kopia-20250211.0.194118-linux-arm.tar.gz"
    sha256 "d9fe65c963b996648efe47f685c4ed389e3e0f58b4d5a36d35ad5f158ac8e82e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250211.0.194118/kopia-20250211.0.194118-linux-arm64.tar.gz"
    sha256 "569dc534f6af2c75e26ab793aae35ac9446fbba7565288a27f9f2e2e729d157c"
  end

  def install
    bin.install "kopia"
  end
end
