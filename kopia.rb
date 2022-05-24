# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220523.0.174913"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.174913/kopia-20220523.0.174913-macOS-x64.tar.gz"
    sha256 "154d126bbc90fb0a75e72fc15c54c8aaac279c742366941366be12447b2fc2aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.174913/kopia-20220523.0.174913-macOS-arm64.tar.gz"
    sha256 "9ba42a7bea444c0d4504e6cc8f075d908e0b72184a9191a8cd2136917a3f7bba"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.174913/kopia-20220523.0.174913-linux-x64.tar.gz"
    sha256 "42fcfcaf2f88f0178fdd7dcb52be6c191039386865224fd4fb1e0b027fa1b6ef"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.174913/kopia-20220523.0.174913-linux-arm.tar.gz"
    sha256 "652ee1c87f8d381bbf02ab29a49f03f4d5c83d34a4db0546058d314173aa6e3c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220523.0.174913/kopia-20220523.0.174913-linux-arm64.tar.gz"
    sha256 "d36cec2467083242e6173ce26f98c3c90ae7055503dee3e546fe38d35b44d8b9"
  end

  def install
    bin.install "kopia"
  end
end
