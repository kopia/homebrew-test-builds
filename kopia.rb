# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.190422"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.190422/kopia-20220202.0.190422-macOS-x64.tar.gz"
    sha256 "bd428ccee5d72c84148bbff6e94deadf76d12c4862edb301adc8dae6c6121d8e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.190422/kopia-20220202.0.190422-macOS-arm64.tar.gz"
    sha256 "0c6b0cd0982ccf9346b0191f0e8d94f69ca02bee3e80a1a29bd266edfbbff379"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.190422/kopia-20220202.0.190422-linux-x64.tar.gz"
    sha256 "49173d53462cc55abadddcd016941846cc5837722a9e0c25fe6a00ea8e0a7695"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.190422/kopia-20220202.0.190422-linux-arm.tar.gz"
    sha256 "2cb9546baba5c42b0c5210be6651477f6895fffac122cd6192a5ea5561cee634"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.190422/kopia-20220202.0.190422-linux-arm64.tar.gz"
    sha256 "75b1de4085c6f79d35645c07311b2aa5d1a9b0281ffa36f6020bb546d41ddf3f"
  end

  def install
    bin.install "kopia"
  end
end
