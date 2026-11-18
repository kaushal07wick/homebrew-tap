class Osmogrep < Formula
  desc "Terminal coding agent with local models and multi-agent collaboration"
  homepage "https://osmogrep.com"
  license "MIT"

  depends_on "node"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/kaushal07wick/OsmoGrep/releases/download/v0.4.8/osmogrep-aarch64-apple-darwin.tar.gz"
      sha256 "63844abb0ac542e512fbdf04d18638a430effad3cdae4895dbe19889f2d567f6"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/kaushal07wick/OsmoGrep/releases/download/v0.4.8/osmogrep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54cca45921a8670349757bd6ad2b7ad72c083fce5fc4f6cb2419748abafce502"
    end
  end

  def install
    bin.install "osmogrep"
  end

  def caveats
    <<~EOS
      Start OsmoGrep in a project directory, then use /login or configure your model.
      Local models and API keys work without an OsmoGrep account.

      Update with: brew upgrade kaushal07wick/tap/osmogrep
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/osmogrep --version")
    assert_match "terminal coding agent", shell_output("#{bin}/osmogrep --help")
  end
end
