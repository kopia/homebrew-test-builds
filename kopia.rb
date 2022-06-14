# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220614.0.54734"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.54734/kopia-20220614.0.54734-macOS-x64.tar.gz"
    sha256 "cb1a085650a9b115755d60aaa8f3987b6df366aa5d840c40a9447e431f740ae0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.54734/kopia-20220614.0.54734-macOS-arm64.tar.gz"
    sha256 "e3a6b3ccc10b76bfc992d080fbd2408b34dce772b15312016b315b7726a053b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.54734/kopia-20220614.0.54734-linux-x64.tar.gz"
    sha256 "55b02cfadf268cedfc8b996134895b96a014e20dc32332c7bdc4545a2acd6392"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.54734/kopia-20220614.0.54734-linux-arm.tar.gz"
    sha256 "116a2757d73d2e03de46a3e94a4b3f47fb040876fe72f6ac3823e63d4b565804"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.54734/kopia-20220614.0.54734-linux-arm64.tar.gz"
    sha256 "6879d8693217ff614b5f99112e67e920f2146e4fde97462efa2878a67f9a71fe"
  end

  def install
    bin.install "kopia"
  end
end
