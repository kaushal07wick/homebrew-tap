class Osmogrep < Formula
  desc "Terminal coding agent with local models and multi-agent collaboration"
  homepage "https://osmogrep.com"
  license "MIT"

  depends_on "node"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/kaushal07wick/OsmoGrep/releases/download/v0.4.9/osmogrep-aarch64-apple-darwin.tar.gz"
      sha256 "023848197a89f13266124f8bb7c3106b4695afb59d1c989ce2d3287f1080e6de"
    end
  end

  on_linux do
    depends_on "alsa-lib"
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/kaushal07wick/OsmoGrep/releases/download/v0.4.9/osmogrep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58cd7cc32c044e60b0efebbb25b68864e5b6064cdf1dd192d29c43cb431d2948"
    end
  end

  def install
    if OS.linux?
      libexec.install "osmogrep"
      (bin/"osmogrep").write_env_script libexec/"osmogrep",
        LD_LIBRARY_PATH: "#{formula_opt_lib("alsa-lib")}${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
    else
      bin.install "osmogrep"
    end
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
