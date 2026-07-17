import React, { useState, useEffect, useRef } from 'react';

// 核心配置文件：便于后续修改和定制
const PORTFOLIO_DATA = {
  profile: {
    name: "Alex Mercer",
    title: "AI-Assisted Software Engineer & Architect",
    subTitle: "Human Intuition × Machine Intelligence",
    bio: "深耕于人工智能辅助开发的下一代软件工程师。擅长构建以 LLM/Agents 为核心的自动化工作流，并将代码生成效率与工程健壮度提升至传统开发的 10 倍以上。在机器重构与人机协同系统架构方面拥有多项落地实践。",
    stats: [
      { label: "Lines Generated & Audited", value: "2.4M+", suffix: "" },
      { label: "Agentic Workflows Deployed", value: "40+", suffix: "" },
      { label: "Production Uptime", value: "99.99", suffix: "%" },
      { label: "AI-to-Human Synergy", value: "92:8", suffix: "" }
    ],
    socials: {
      github: "https://github.com",
      twitter: "https://twitter.com",
      email: "alex.mercer.ai@outlook.com",
      location: "Tokyo, Japan / Remote"
    }
  },
  projects: [
    {
      id: "01",
      title: "Hyperion-Engine",
      category: "Autonomous Agent Workflow",
      desc: "一个基于大模型的自主软件研发智能体框架。可自动解析需求文档，生成多文件架构设计，并自动执行单元测试与自我修复循环，实现 0 到 1 的应用自主落地。",
      tech: ["React", "Python", "LangChain", "Docker", "FastAPI"],
      metrics: { devTime: "Saved 78%", safety: "Type Safe", testCoverage: "96.4%" },
      accent: "from-violet-500 to-indigo-500",
      glowColor: "rgba(139, 92, 246, 0.15)"
    },
    {
      id: "02",
      title: "Neural-Mesh Router",
      category: "Distributed System Optimization",
      desc: "高并发分布式系统的边缘网关。深度利用 AI 预测模型，在极微秒级对动态流量进行感知，智能调整路由路由矩阵，使冷启动延迟降低 84%。",
      tech: ["Go", "Rust", "WebAssembly", "gRPC", "eBPF"],
      metrics: { latency: "-84ms", throughput: "1.2M rps", nodeCount: "128 Nodes" },
      accent: "from-cyan-500 to-blue-500",
      glowColor: "rgba(6, 182, 212, 0.15)"
    },
    {
      id: "03",
      title: "Omni-Scribe IDE Copilot",
      category: "Developer Tooling",
      desc: "专为领域特定语言（DSL）打造的代码理解与自动补全引擎。基于本地小型量化模型，无断网风险，代码隐私 100% 本地化安全保障。",
      tech: ["TypeScript", "Rust", "ONNX Runtime", "VS Code Ext"],
      metrics: { latency: "12ms", accuracy: "91.2%", localSize: "1.8GB" },
      accent: "from-emerald-500 to-teal-500",
      glowColor: "rgba(16, 185, 129, 0.15)"
    }
  ],
  strengths: [
    {
      title: "人机协同开发架构 (AI Synergy)",
      desc: "深谙与 LLM 协同的高阶提示工程，能够设计并维护复杂的多智能体（Multi-agent）生产流水线，使软件迭代达到小时级。"
    },
    {
      title: "全栈高并发系统架构",
      desc: "兼具极客的极致效率与传统工程严谨度。精通 Go/Rust 系统编程，擅长高负载场景下的吞吐优化与内存安全审计。"
    },
    {
      title: "零信任本地化部署",
      desc: "擅长在企业内网环境下，对大语言模型进行轻量化部署、量化调优及向量数据库 RAG 检索增强，守卫数据安全红线。"
    },
    {
      title: "敏捷验证与超速原型",
      desc: "得益于 AI 赋能，能在 24 小时内交付具备完整交互的高保真原型系统，帮助团队在极短时间内完成 PMF 价值验证。"
    }
  ]
};

// 交互式 Canvas背景组件：生成神经网络流动光点
function ParticleCanvas() {
  const canvasRef = useRef(null);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    const ctx = canvas.getContext('2d');
    let animationFrameId;

    let width = (canvas.width = window.innerWidth);
    let height = (canvas.height = window.innerHeight);

    const particles = [];
    const particleCount = Math.min(80, Math.floor((width * height) / 20000));
    let mouse = { x: null, y: null, radius: 180 };

    class Particle {
      constructor() {
        this.x = Math.random() * width;
        this.y = Math.random() * height;
        this.vx = (Math.random() - 0.5) * 0.4;
        this.vy = (Math.random() - 0.5) * 0.4;
        this.radius = Math.random() * 1.5 + 0.5;
        this.baseAlpha = Math.random() * 0.3 + 0.1;
        this.alpha = this.baseAlpha;
      }

      update() {
        this.x += this.vx;
        this.y += this.vy;

        // 边界碰撞反弹
        if (this.x < 0 || this.x > width) this.vx = -this.vx;
        if (this.y < 0 || this.y > height) this.vy = -this.vy;

        // 鼠标排斥/吸引互动
        if (mouse.x !== null && mouse.y !== null) {
          const dx = mouse.x - this.x;
          const dy = mouse.y - this.y;
          const dist = Math.sqrt(dx * dx + dy * dy);
          if (dist < mouse.radius) {
            const force = (mouse.radius - dist) / mouse.radius;
            this.x -= dx * force * 0.02;
            this.y -= dy * force * 0.02;
            this.alpha = Math.min(0.8, this.baseAlpha + force * 0.4);
          } else {
            if (this.alpha > this.baseAlpha) {
              this.alpha -= 0.01;
            }
          }
        }
      }

      draw() {
        ctx.beginPath();
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = `rgba(139, 92, 246, ${this.alpha})`;
        ctx.fill();
      }
    }

    // 初始化粒子
    for (let i = 0; i < particleCount; i++) {
      particles.push(new Particle());
    }

    // 绘制连线
    function drawLines() {
      for (let i = 0; i < particles.length; i++) {
        for (let j = i + 1; j < particles.length; j++) {
          const dx = particles[i].x - particles[j].x;
          const dy = particles[i].y - particles[j].y;
          const dist = Math.sqrt(dx * dx + dy * dy);

          if (dist < 150) {
            const alpha = (1 - dist / 150) * 0.12;
            ctx.strokeStyle = `rgba(99, 102, 241, ${alpha})`;
            ctx.lineWidth = 0.5;
            ctx.beginPath();
            ctx.moveTo(particles[i].x, particles[i].y);
            ctx.lineTo(particles[j].x, particles[j].y);
            ctx.stroke();
          }
        }
      }
    }

    const handleMouseMove = (e) => {
      mouse.x = e.clientX;
      mouse.y = e.clientY;
    };

    const handleMouseLeave = () => {
      mouse.x = null;
      mouse.y = null;
    };

    const handleResize = () => {
      width = canvas.width = window.innerWidth;
      height = canvas.height = window.innerHeight;
    };

    window.addEventListener('mousemove', handleMouseMove);
    window.addEventListener('mouseleave', handleMouseLeave);
    window.addEventListener('resize', handleResize);

    const render = () => {
      ctx.fillStyle = 'rgba(3, 7, 18, 0.15)'; // 微弱拖尾留白
      ctx.fillRect(0, 0, width, height);

      // 绘制网格辅助背景，增强科技感
      ctx.strokeStyle = 'rgba(255, 255, 255, 0.015)';
      ctx.lineWidth = 1;
      const gridSize = 60;
      for (let x = 0; x < width; x += gridSize) {
        ctx.beginPath();
        ctx.moveTo(x, 0);
        ctx.lineTo(x, height);
        ctx.stroke();
      }
      for (let y = 0; y < height; y += gridSize) {
        ctx.beginPath();
        ctx.moveTo(0, y);
        ctx.lineTo(width, y);
        ctx.stroke();
      }

      particles.forEach((p) => {
        p.update();
        p.draw();
      });

      drawLines();
      animationFrameId = requestAnimationFrame(render);
    };

    render();

    return () => {
      cancelAnimationFrame(animationFrameId);
      window.removeEventListener('mousemove', handleMouseMove);
      window.removeEventListener('mouseleave', handleMouseLeave);
      window.removeEventListener('resize', handleResize);
    };
  }, []);

  return <canvas ref={canvasRef} className="absolute inset-0 z-0 pointer-events-none" />;
}

// 交互式终端组件：支持真实交互命令
function TerminalConsole() {
  const [history, setHistory] = useState([
    { text: 'System initialized. Enter "/help" to view executable protocols.', type: 'system' }
  ]);
  const [inputVal, setInputVal] = useState('');
  const terminalEndRef = useRef(null);

  useEffect(() => {
    terminalEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  }, [history]);

  const handleCommand = (e) => {
    if (e.key === 'Enter') {
      const cmd = inputVal.trim().toLowerCase();
      if (!cmd) return;

      const newHistory = [...history, { text: `user@ai-programmer:~$ ${inputVal}`, type: 'user' }];

      let response = '';
      if (cmd === '/help') {
        response = 'Available protocols:\n  /about     - Display system architecture info\n  /skills    - Inspect primary skill matrices\n  /clear     - Clear standard output';
      } else if (cmd === '/about') {
        response = `Identity: ${PORTFOLIO_DATA.profile.name}\nObjective: ${PORTFOLIO_DATA.profile.subTitle}\nBio: ${PORTFOLIO_DATA.profile.bio}`;
      } else if (cmd === '/skills') {
        response = PORTFOLIO_DATA.strengths.map(s => `• ${s.title}: ${s.desc}`).join('\n\n');
      } else if (cmd === '/clear') {
        setHistory([]);
        setInputVal('');
        return;
      } else {
        response = `Command "${cmd}" not recognized. Execute "/help" for catalog.`;
      }

      setHistory([...newHistory, { text: response, type: 'response' }]);
      setInputVal('');
    }
  };

  return (
    <div className="bg-zinc-950/80 backdrop-blur-md border border-zinc-800/80 rounded-lg p-5 font-mono text-sm shadow-2xl h-80 flex flex-col justify-between overflow-hidden">
      {/* 终端头部 */}
      <div className="flex items-center justify-between pb-3 border-b border-zinc-800/60 mb-2">
        <div className="flex items-center space-x-2">
          <div className="w-3 h-3 rounded-full bg-red-500/80"></div>
          <div className="w-3 h-3 rounded-full bg-yellow-500/80"></div>
          <div className="w-3 h-3 rounded-full bg-green-500/80"></div>
          <span className="text-zinc-500 text-xs pl-2">bash - human_machine_synergy.sh</span>
        </div>
        <div className="text-zinc-600 text-xs">SYS_REV_3.2</div>
      </div>

      {/* 终端日志内容 */}
      <div className="flex-1 overflow-y-auto space-y-2 pr-1 custom-scrollbar scroll-smooth">
        {history.map((item, index) => (
          <div key={index} className={`whitespace-pre-wrap leading-relaxed ${
            item.type === 'user' ? 'text-zinc-200 font-semibold' :
            item.type === 'system' ? 'text-emerald-500' : 'text-zinc-400'
          }`}>
            {item.text}
          </div>
        ))}
        <div ref={terminalEndRef} />
      </div>

      {/* 输入区 */}
      <div className="flex items-center pt-2 border-t border-zinc-800/40">
        <span className="text-violet-500 font-bold mr-2">~$</span>
        <input
          type="text"
          value={inputVal}
          onChange={(e) => setInputVal(e.target.value)}
          onKeyDown={handleCommand}
          className="bg-transparent text-zinc-100 border-none outline-none flex-1 focus:ring-0 p-0 font-mono"
          placeholder="Type command here..."
        />
      </div>
    </div>
  );
}

export default function App() {
  const [activeSection, setActiveSection] = useState('hero');
  const [copiedEmail, setCopiedEmail] = useState(false);

  // 监听滚动，处理导航栏高亮
  useEffect(() => {
    const handleScroll = () => {
      const sections = ['hero', 'profile', 'projects', 'strengths', 'contact'];
      const scrollPos = window.scrollY + window.innerHeight / 3;

      for (const section of sections) {
        const element = document.getElementById(section);
        if (element) {
          const top = element.offsetTop;
          const height = element.offsetHeight;
          if (scrollPos >= top && scrollPos < top + height) {
            setActiveSection(section);
            break;
          }
        }
      }
    };

    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const scrollTo = (id) => {
    const element = document.getElementById(id);
    if (element) {
      element.scrollIntoView({ behavior: 'smooth' });
    }
  };

  const copyEmailToClipboard = () => {
    navigator.clipboard.writeText(PORTFOLIO_DATA.profile.socials.email);
    setCopiedEmail(true);
    setTimeout(() => setCopiedEmail(false), 2000);
  };

  return (
    <div className="bg-[#030712] text-zinc-300 min-h-screen font-sans selection:bg-violet-500/30 selection:text-white relative overflow-x-hidden">
      
      {/* 神经网络 Canvas 背景 */}
      <ParticleCanvas />

      {/* ==================== NAVIGATION BAR ==================== */}
      <nav className="fixed top-0 left-0 w-full z-50 bg-[#030712]/40 backdrop-blur-md border-b border-zinc-900/50">
        <div className="max-w-[1700px] mx-auto px-6 h-20 flex items-center justify-between">
          {/* Logo */}
          <div className="flex items-center space-x-3 cursor-pointer" onClick={() => scrollTo('hero')}>
            <div className="relative w-8 h-8 flex items-center justify-center">
              <span className="absolute inset-0 bg-violet-500/20 rounded-full animate-ping"></span>
              <span className="relative text-white font-mono font-black text-lg">M</span>
            </div>
            <span className="font-mono text-xs tracking-widest text-zinc-400 uppercase hidden sm:inline-block">
              MERCER // SYSTEM
            </span>
          </div>

          {/* Nav Items */}
          <div className="hidden md:flex items-center space-x-8 font-mono text-xs tracking-wider">
            {[
              { id: 'hero', label: '01 // INTRO' },
              { id: 'profile', label: '02 // ARCHIVE' },
              { id: 'projects', label: '03 // PORTFOLIO' },
              { id: 'strengths', label: '04 // CAPACITY' },
              { id: 'contact', label: '05 // PROTOCOL' }
            ].map((nav) => (
              <button
                key={nav.id}
                onClick={() => scrollTo(nav.id)}
                className={`transition-all duration-300 relative py-1 ${
                  activeSection === nav.id ? 'text-violet-400' : 'text-zinc-500 hover:text-zinc-200'
                }`}
              >
                {nav.label}
                {activeSection === nav.id && (
                  <span className="absolute bottom-0 left-0 w-full h-[1px] bg-violet-400 animate-pulse"></span>
                )}
              </button>
            ))}
          </div>

          {/* Quick Connect Button */}
          <div>
            <button
              onClick={() => scrollTo('contact')}
              className="px-5 py-2.5 rounded-sm border border-zinc-800 text-xs font-mono uppercase tracking-widest text-zinc-300 hover:text-white hover:border-violet-500 hover:bg-violet-500/10 transition-all duration-300"
            >
              Contact Agent
            </button>
          </div>
        </div>
      </nav>

      {/* ==================== SECTION 1: HERO ==================== */}
      <section
        id="hero"
        className="relative min-h-screen flex flex-col justify-center max-w-[1700px] mx-auto px-6 lg:px-12 pt-20 z-10"
      >
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 items-center">
          
          {/* 左侧大字报与口号 */}
          <div className="lg:col-span-8 space-y-8 select-none">
            <div className="inline-flex items-center space-x-2 bg-zinc-900/60 border border-zinc-800 px-3 py-1.5 rounded-full text-xs font-mono text-zinc-400">
              <span className="w-2 h-2 rounded-full bg-emerald-500 animate-pulse"></span>
              <span>COPILOT ENGAGED &amp; ONLINE</span>
            </div>

            <h1 className="text-4xl sm:text-6xl lg:text-8xl font-black text-transparent bg-clip-text bg-gradient-to-br from-zinc-50 via-zinc-200 to-zinc-600 leading-tight tracking-tight uppercase">
              CRAFTING FUTURE <br />
              <span className="text-transparent bg-clip-text bg-gradient-to-r from-violet-400 via-indigo-400 to-cyan-400">
                AT THE VELOCITY
              </span> <br />
              OF INTUITIVE CODE.
            </h1>

            <p className="max-w-xl text-zinc-400 font-mono text-sm leading-relaxed border-l border-zinc-800 pl-4">
              AI智能体辅助开发先驱。以超高的人机共生协同效率，为复杂生产级系统构筑安全、优雅和极具未来感的架构支撑。
            </p>

            <div className="flex flex-wrap gap-4 pt-4">
              <button
                onClick={() => scrollTo('projects')}
                className="px-8 py-4 bg-zinc-100 text-[#030712] font-semibold text-sm tracking-wide rounded hover:bg-violet-500 hover:text-white transition-all duration-300 flex items-center group"
              >
                Browse Matrix
                <svg className="w-4 h-4 ml-2 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M14 5l7 7m0 0l-7 7m7-7H3" />
                </svg>
              </button>

              <button
                onClick={() => scrollTo('profile')}
                className="px-8 py-4 bg-zinc-900/80 border border-zinc-800 hover:border-zinc-600 text-zinc-300 font-mono text-sm rounded transition-all duration-300"
              >
                System_Overview.log
              </button>
            </div>
          </div>

          {/* 右侧：超高科技感的代码可视化装饰/控制台 */}
          <div className="lg:col-span-4 space-y-4">
            <div className="relative group">
              <div className="absolute -inset-1 rounded-lg bg-gradient-to-r from-violet-500 to-cyan-500 opacity-20 blur group-hover:opacity-30 transition-all duration-500"></div>
              <div className="relative bg-[#080d19]/90 border border-zinc-800/80 rounded-lg p-5 font-mono text-xs text-zinc-400 space-y-4 shadow-xl">
                <div className="flex justify-between text-zinc-500 pb-2 border-b border-zinc-800">
                  <span>METRICS_STREAMER</span>
                  <span className="text-emerald-500">SYS_OK</span>
                </div>
                <div className="space-y-1">
                  <div className="flex justify-between">
                    <span>⚡ AI Inference Rate:</span>
                    <span className="text-zinc-200">12,400 tokens/sec</span>
                  </div>
                  <div className="flex justify-between">
                    <span>⚡ Synthesis Latency:</span>
                    <span className="text-cyan-400">4.2 ms</span>
                  </div>
                  <div className="flex justify-between">
                    <span>⚡ Synergy Multiplier:</span>
                    <span className="text-violet-400">14.8x Efficiency</span>
                  </div>
                </div>
                <div className="bg-zinc-950/60 p-3 rounded border border-zinc-800/40 text-[10px] space-y-1">
                  <div className="text-zinc-500">// CURRENT COMPILATION MATRIX</div>
                  <div className="text-zinc-400 truncate">import &lbrace; agentWorkflow &rbrace; from 'hyperion-core';</div>
                  <div className="text-emerald-500">✓ System synthesis succeeded in 0.004s</div>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* 底部提示滚动 */}
        <div className="absolute bottom-10 left-6 lg:left-12 flex items-center space-x-3 font-mono text-xs text-zinc-500 select-none">
          <div className="w-[1px] h-12 bg-gradient-to-b from-zinc-800 to-transparent"></div>
          <span className="animate-pulse">Scroll to initialize payload</span>
        </div>
      </section>

      {/* ==================== SECTION 2: PROFILE & EXPERIENCES ==================== */}
      {}
      <section
        id="profile"
        className="py-32 border-t border-zinc-900/60 max-w-[1700px] mx-auto px-6 lg:px-12 relative z-10"
      >
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-16 items-start">
          
          {/* 左半部分：真实体验终端 + 技术栈可视化 */}
          <div className="lg:col-span-6 space-y-8">
            <div className="space-y-4">
              <span className="font-mono text-xs text-violet-400 uppercase tracking-widest">
                [ Protocol 02 // Core Architecture ]
              </span>
              <h2 className="text-3xl lg:text-4xl font-black text-white tracking-tight uppercase">
                人机共生系统的实践与构想。
              </h2>
            </div>
            
            <TerminalConsole />

            {/* 实用的交互式技术矩阵芯片 */}
            <div className="space-y-3">
              <div className="text-xs font-mono text-zinc-500 uppercase tracking-widest">// DEPLOYED TECH MATRIX</div>
              <div className="flex flex-wrap gap-2">
                {["TypeScript", "GoLang", "Rust", "Python", "React", "NextJS", "Docker", "Kubernetes", "VectorDB", "LangChain", "eBPF"].map((tech) => (
                  <span
                    key={tech}
                    className="px-3 py-1.5 bg-zinc-900 border border-zinc-800 rounded font-mono text-xs text-zinc-300 hover:text-white hover:border-zinc-700 transition-all cursor-default"
                  >
                    {tech}
                  </span>
                ))}
              </div>
            </div>
          </div>

          {/* 右半部分：个人画像、硬核数据看板、基本介绍 */}
          <div className="lg:col-span-6 space-y-12">
            
            {/* 头像/AI 极客风格抽象卡片 */}
            <div className="relative group overflow-hidden border border-zinc-800/80 rounded-lg p-8 bg-gradient-to-br from-zinc-950 to-zinc-900/30">
              <div className="absolute top-0 right-0 w-32 h-32 bg-violet-500/10 rounded-full blur-3xl pointer-events-none"></div>
              
              <div className="flex flex-col sm:flex-row items-start sm:items-center space-y-6 sm:space-y-0 sm:space-x-8">
                {/* 极客风格模拟头像：用高科技感框格代替真实图片 */}
                <div className="relative w-28 h-28 border-2 border-zinc-800/80 rounded-lg overflow-hidden shrink-0 flex items-center justify-center bg-[#050b14]">
                  <div className="absolute inset-2 border border-zinc-700 border-dashed rounded opacity-50"></div>
                  <div className="absolute top-1/2 left-0 w-full h-[2px] bg-violet-500/40 animate-pulse"></div>
                  <span className="font-mono text-3xl font-black text-transparent bg-clip-text bg-gradient-to-r from-violet-400 to-indigo-400">AM</span>
                </div>

                <div className="space-y-2">
                  <h3 className="text-xl font-bold text-white">{PORTFOLIO_DATA.profile.name}</h3>
                  <p className="font-mono text-xs text-zinc-400">{PORTFOLIO_DATA.profile.title}</p>
                  <p className="text-zinc-500 text-xs flex items-center">
                    <svg className="w-3.5 h-3.5 mr-1.5 text-zinc-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                    </svg>
                    {PORTFOLIO_DATA.profile.socials.location}
                  </p>
                </div>
              </div>

              <p className="mt-8 text-zinc-400 text-sm leading-relaxed font-sans">
                {PORTFOLIO_DATA.profile.bio}
              </p>
            </div>

            {/* 实打实的数据统计：展示 AI 重构世界的力量 */}
            <div className="grid grid-cols-2 gap-6">
              {PORTFOLIO_DATA.profile.stats.map((stat, i) => (
                <div
                  key={i}
                  className="bg-[#050b14] border border-zinc-900 p-6 rounded-lg relative overflow-hidden group hover:border-zinc-800 transition-all duration-300"
                >
                  <div className="absolute top-0 left-0 w-full h-[2px] bg-gradient-to-r from-violet-500/0 via-violet-500/30 to-violet-500/0 scale-x-0 group-hover:scale-x-100 transition-transform duration-500"></div>
                  <div className="text-3xl lg:text-4xl font-black font-mono text-white mb-2 tracking-tight">
                    {stat.value}
                    <span className="text-lg text-violet-500 font-normal ml-0.5">{stat.suffix}</span>
                  </div>
                  <div className="text-xs font-mono text-zinc-500 tracking-wider uppercase">
                    {stat.label}
                  </div>
                </div>
              ))}
            </div>

          </div>
        </div>
      </section>

      {/* ==================== SECTION 3: FEATURED PROJECTS ==================== */}
      {}
      <section
        id="projects"
        className="py-32 border-t border-zinc-900/60 max-w-[1700px] mx-auto px-6 lg:px-12 relative z-10"
      >
        <div className="space-y-4 mb-16">
          <span className="font-mono text-xs text-violet-400 uppercase tracking-widest">
            [ Protocol 03 // Production Implementations ]
          </span>
          <div className="flex flex-col lg:flex-row lg:items-end justify-between gap-4">
            <h2 className="text-3xl lg:text-5xl font-black text-white tracking-tight uppercase">
              精选工程矩阵。
            </h2>
            <p className="text-zinc-500 text-sm max-w-md font-mono">
              // 所有展示项目均具有极高的生产实用性，并在人机共生开发环境下快速验证及落地。
            </p>
          </div>
        </div>

        {/* 精选项目：高级大卡片设计 */}
        <div className="space-y-16">
          {PORTFOLIO_DATA.projects.map((proj, idx) => (
            <div
              key={proj.id}
              className="relative group border border-zinc-850 bg-zinc-950/40 rounded-xl p-8 lg:p-12 hover:border-zinc-700/80 transition-all duration-500 overflow-hidden"
              style={{ boxShadow: `inset 0 0 30px ${proj.glowColor}` }}
            >
              {/* 大背景数字编号，克制而宏大 */}
              <div className="absolute top-4 right-10 font-mono text-7xl lg:text-9xl font-black text-zinc-800/10 pointer-events-none select-none">
                {proj.id}
              </div>

              <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 relative z-10 items-center">
                
                {/* 左半部分：文字信息 */}
                <div className="lg:col-span-7 space-y-6">
                  <span className="font-mono text-xs text-violet-400 tracking-widest uppercase bg-violet-950/40 border border-violet-900/40 px-3 py-1 rounded">
                    {proj.category}
                  </span>
                  
                  <h3 className="text-2xl lg:text-4xl font-extrabold text-white tracking-tight hover:text-violet-300 transition-colors">
                    {proj.title}
                  </h3>

                  <p className="text-zinc-400 text-sm leading-relaxed font-sans max-w-2xl">
                    {proj.desc}
                  </p>

                  {/* 技术标签 */}
                  <div className="flex flex-wrap gap-2 pt-2">
                    {proj.tech.map((t) => (
                      <span key={t} className="px-2.5 py-1 bg-zinc-900 border border-zinc-800 text-xs font-mono text-zinc-400 rounded">
                        {t}
                      </span>
                    ))}
                  </div>

                  {/* 三大指标统计：突显技术含量 */}
                  <div className="grid grid-cols-3 gap-4 pt-6 border-t border-zinc-900">
                    {Object.entries(proj.metrics).map(([key, val]) => (
                      <div key={key}>
                        <div className="font-mono text-lg font-bold text-zinc-100">{val}</div>
                        <div className="text-[10px] font-mono text-zinc-500 uppercase tracking-widest">{key.replace(/([A-Z])/g, ' $1')}</div>
                      </div>
                    ))}
                  </div>
                </div>

                {/* 右半部分：极客硬核的虚拟代码/架构可视化仪表盘 */}
                <div className="lg:col-span-5 relative">
                  <div className="bg-zinc-950 border border-zinc-850/80 rounded-lg p-5 font-mono text-[11px] leading-relaxed text-zinc-400 shadow-2xl h-64 overflow-hidden relative">
                    <div className="flex items-center justify-between pb-3 border-b border-zinc-900 mb-4 text-zinc-500">
                      <span>{proj.title.toLowerCase()}_viz.sh</span>
                      <span className="flex items-center space-x-1.5">
                        <span className="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse"></span>
                        <span>LIVE_STREAM</span>
                      </span>
                    </div>

                    {proj.id === "01" && (
                      <div className="space-y-2 text-zinc-500">
                        <div className="text-zinc-400 font-bold">[OK] Loaded agents config: 4 units</div>
                        <div>↳ Orchestrator-Agent: <span className="text-violet-400">ACTIVE</span></div>
                        <div>↳ Architecture-Evaluator: <span className="text-indigo-400">MONITORING</span></div>
                        <div>↳ Code-Synthesizer: <span className="text-emerald-400">WRITING_CODE</span></div>
                        <div className="bg-zinc-900 p-2 rounded text-[10px] text-zinc-400 mt-4 border border-zinc-800/40">
                          // Task: Implement resilient websocket cluster
                          <div className="text-emerald-500 font-bold">✓ Generation matched specifications. Code injected successfully.</div>
                        </div>
                      </div>
                    )}

                    {proj.id === "02" && (
                      <div className="space-y-4">
                        <div className="grid grid-cols-2 gap-4">
                          <div className="bg-[#050c18] p-3 rounded border border-zinc-800/40">
                            <span className="text-zinc-500 block text-[9px] uppercase tracking-wider">Dynamic Router</span>
                            <span className="text-emerald-400 font-bold text-sm">eBPF Hook Safe</span>
                          </div>
                          <div className="bg-[#050c18] p-3 rounded border border-zinc-800/40">
                            <span className="text-zinc-500 block text-[9px] uppercase tracking-wider">Predictive Rate Limit</span>
                            <span className="text-cyan-400 font-bold text-sm">Adaptive (1.2M)</span>
                          </div>
                        </div>
                        <div className="text-[10px] text-zinc-600">
                          01:23:44 gateway_mesh_node [info] re-routing traffic from cluster-asia to cluster-us-west. Optimal latency path identified.
                        </div>
                      </div>
                    )}

                    {proj.id === "03" && (
                      <div className="space-y-3">
                        <div className="text-zinc-500">// Inference benchmark (local LLaMA Quant)</div>
                        <div className="flex items-center justify-between">
                          <span>Model Quantization:</span>
                          <span className="text-amber-500">INT4</span>
                        </div>
                        <div className="flex items-center justify-between">
                          <span>Local VRAM Allocated:</span>
                          <span className="text-zinc-300">1.62 GB</span>
                        </div>
                        <div className="w-full bg-zinc-900 h-2 rounded overflow-hidden mt-4">
                          <div className="bg-emerald-500 h-full w-[91%]" />
                        </div>
                        <div className="text-[10px] text-zinc-500 text-right">Context Confidence: 91.2%</div>
                      </div>
                    )}

                    {/* 卡片反光背景装饰线 */}
                    <div className="absolute top-0 left-0 w-full h-[1px] bg-gradient-to-r from-transparent via-zinc-700/20 to-transparent"></div>
                  </div>
                </div>

              </div>
            </div>
          ))}
        </div>
      </section>

      {/* ==================== SECTION 4: STRENGTHS ==================== */}
      <section
        id="strengths"
        className="py-32 border-t border-zinc-900/60 max-w-[1700px] mx-auto px-6 lg:px-12 relative z-10"
      >
        <div className="space-y-4 mb-20 text-center">
          <span className="font-mono text-xs text-violet-400 uppercase tracking-widest">
            [ Protocol 04 // Capability Paradigm ]
          </span>
          <h2 className="text-3xl lg:text-5xl font-black text-white tracking-tight uppercase">
            我的优势与核心能力。
          </h2>
          <p className="text-zinc-500 text-sm max-w-xl mx-auto font-sans">
            AI 不会淘汰程序员，但善用 AI 的程序员会淘汰不用的。以下是我将效率与安全完美结合的核心优势。
          </p>
        </div>

        {/* 优势网格 */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          {PORTFOLIO_DATA.strengths.map((str, idx) => (
            <div
              key={idx}
              className="bg-[#050b14]/50 border border-zinc-900 rounded-lg p-8 hover:border-zinc-800 hover:bg-[#050b14]/80 transition-all duration-300 group"
            >
              <div className="flex items-start space-x-6">
                {/* 装饰序号 */}
                <div className="font-mono text-lg font-black text-violet-500/80 bg-violet-950/40 border border-violet-900/40 w-10 h-10 rounded-lg flex items-center justify-center shrink-0">
                  {idx + 1}
                </div>
                <div className="space-y-3">
                  <h3 className="text-xl font-bold text-white group-hover:text-violet-300 transition-colors">
                    {str.title}
                  </h3>
                  <p className="text-zinc-400 text-sm leading-relaxed">
                    {str.desc}
                  </p>
                </div>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* ==================== SECTION 5: CONTACT (FULL SCREEN TERMINAL ENDING) ==================== */}
      {}
      <section
        id="contact"
        className="min-h-screen py-32 border-t border-zinc-900/60 max-w-[1700px] mx-auto px-6 lg:px-12 flex flex-col justify-center relative z-10"
      >
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-16 items-center">
          
          {/* 左侧：整屏收尾文字 */}
          <div className="lg:col-span-6 space-y-8">
            <div className="space-y-4">
              <span className="font-mono text-xs text-violet-400 uppercase tracking-widest">
                [ Protocol 05 // Connection Protocol ]
              </span>
              <h2 className="text-4xl lg:text-7xl font-black text-white tracking-tight uppercase">
                INITIALIZE <br />
                CONNECTION.
              </h2>
            </div>

            <p className="text-zinc-400 font-sans text-base leading-relaxed max-w-lg">
              无论是关于大规模人机协同研发模式、高并发基础设施重构，或是极客系统的架构讨论，都随时欢迎建立链接。
            </p>

            {/* 极简高级联系按钮 */}
            <div className="space-y-4">
              <div className="font-mono text-xs text-zinc-500 uppercase tracking-wider">// COMM CHANNELS</div>
              
              <div className="flex flex-col sm:flex-row gap-4">
                {/* 点击复制 Email，提升交互友好度 */}
                <button
                  onClick={copyEmailToClipboard}
                  className="flex items-center justify-between px-6 py-4 bg-zinc-900 border border-zinc-800 text-zinc-300 hover:text-white hover:border-violet-500 rounded font-mono text-sm transition-all duration-300 group"
                >
                  <span className="flex items-center">
                    <svg className="w-4 h-4 mr-3 text-zinc-500 group-hover:text-violet-400 transition-colors" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                    </svg>
                    {copiedEmail ? "EMAIL COPIED!" : PORTFOLIO_DATA.profile.socials.email}
                  </span>
                  {!copiedEmail && (
                    <svg className="w-4 h-4 text-zinc-600 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M8 5H6a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2v-1M8 5a2 2 0 002 2h2a2 2 0 002-2M8 5a2 2 0 012-2h2a2 2 0 012 2" />
                    </svg>
                  )}
                </button>

                <a
                  href={PORTFOLIO_DATA.profile.socials.github}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center justify-center px-6 py-4 bg-zinc-900/40 border border-zinc-850 text-zinc-400 hover:text-white hover:border-zinc-700 rounded font-mono text-sm transition-all duration-300"
                >
                  GitHub Profile
                </a>
              </div>
            </div>
          </div>

          {/* 右侧：高度拟真且极其炫酷的连接表单控制台 */}
          <div className="lg:col-span-6">
            <div className="relative group">
              <div className="absolute -inset-1.5 rounded-lg bg-gradient-to-r from-violet-500 via-indigo-500 to-cyan-500 opacity-20 blur-xl group-hover:opacity-30 transition-all duration-700"></div>
              
              <form
                onSubmit={(e) => {
                  e.preventDefault();
                  alert("Message broadcasted. Connection protocol established.");
                }}
                className="relative bg-[#050b14] border border-zinc-800 rounded-lg p-8 font-mono text-sm space-y-6 shadow-2xl"
              >
                <div className="flex items-center justify-between pb-4 border-b border-zinc-900">
                  <div className="flex items-center space-x-2">
                    <span className="w-2.5 h-2.5 rounded-full bg-violet-500 animate-pulse"></span>
                    <span className="text-zinc-400 font-bold text-xs uppercase">Transmission Terminal</span>
                  </div>
                  <span className="text-zinc-600 text-xs">PORT 443 // SECURE</span>
                </div>

                <div className="space-y-2">
                  <label className="text-zinc-500 text-xs block uppercase">01 // Identify Sender Name</label>
                  <input
                    type="text"
                    required
                    placeholder="Enter your name..."
                    className="w-full bg-[#030712] border border-zinc-850 focus:border-violet-500 rounded p-3 text-zinc-200 outline-none transition-colors"
                  />
                </div>

                <div className="space-y-2">
                  <label className="text-zinc-500 text-xs block uppercase">02 // Communication Port (Email)</label>
                  <input
                    type="email"
                    required
                    placeholder="name@organization.com"
                    className="w-full bg-[#030712] border border-zinc-850 focus:border-violet-500 rounded p-3 text-zinc-200 outline-none transition-colors"
                  />
                </div>

                <div className="space-y-2">
                  <label className="text-zinc-500 text-xs block uppercase">03 // Encoded Payload (Message)</label>
                  <textarea
                    required
                    rows="4"
                    placeholder="Initialize communication payload here..."
                    className="w-full bg-[#030712] border border-zinc-850 focus:border-violet-500 rounded p-3 text-zinc-200 outline-none transition-colors resize-none"
                  ></textarea>
                </div>

                <button
                  type="submit"
                  className="w-full py-4 bg-gradient-to-r from-violet-600 to-indigo-600 text-white font-bold text-xs uppercase tracking-widest rounded hover:from-violet-500 hover:to-indigo-500 transition-all duration-300"
                >
                  Broadcast Transmission
                </button>
              </form>
            </div>
          </div>

        </div>

        {/* 极简底部声明 */}
        <div className="mt-32 pt-8 border-t border-zinc-950 flex flex-col md:flex-row items-center justify-between text-xs font-mono text-zinc-600 space-y-4 md:space-y-0">
          <div>© {new Date().getFullYear()} ALEX MERCER. SYNERGY SYSTEM LOADED.</div>
          <div className="flex space-x-6">
            <span>SYS_VERSION: 1.0.0</span>
            <span>INTELLIGENTLY ASSISTED BY GEMINI</span>
          </div>
        </div>
      </section>

    </div>
  );
}