# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231221.0.181248"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.181248/kopia-20231221.0.181248-macOS-x64.tar.gz"
    sha256 "352df6db3adcd00d699704a41ef043606694d5f884148df9a309d4a1a8dc8300"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.181248/kopia-20231221.0.181248-macOS-arm64.tar.gz"
    sha256 "5766eca3f47ad19f59f565380aa4ceeb113a06c545d192a6d71b919bf05cc11e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.181248/kopia-20231221.0.181248-linux-x64.tar.gz"
    sha256 "02ca7187b371c0ac3a9a385c9fcfdc03fc3a19177abac5f6f1567fc23d9d5131"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.181248/kopia-20231221.0.181248-linux-arm.tar.gz"
    sha256 "67e2a83a3810836442bc86016a3d08c3bf45f4466b21780a23b280c5a18b5a51"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.181248/kopia-20231221.0.181248-linux-arm64.tar.gz"
    sha256 "3b0dc2715fc090f47fc8f76be6206e02d4cfb72d319ebf29860da08bfe3a693c"
  end

  def install
    bin.install "kopia"
  end
end
