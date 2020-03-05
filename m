Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF06179ED2
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 06:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YpOwyrb2WE/CDlzT3QThQwLnDNsGkooSRHNga96mtQc=; b=uQrLhLZohnFVN4
	qI37ztGnrQ8vMp6/W6BU76uwmx7FEdox4NugP1QuYKpg23C6D9s7vMNlwvzTkTI6nTGPoI5tCSM/a
	HDal4FQoywK3nvhZqcGV9NnNjwmg3K/KT0mdiLlRwbHf5lo7N6cEWwHtZ3OXaznGtFPwE2hwtZhE7
	SMGf34xR2exOANjAqxseeBY7orNrCwTiSblwPpuN2UXJNQW9UwB1OCkORMrXfeITOHbRs15Gye0pB
	YZehJ3nMtJtgwIMyiqqoELujFZiIQBF3oxgB3f6bxfyrWd4uNJD0Op0DGm0zoRO0iMU9HS+joFMq8
	NH6N5VvU7vRRDbfCyLuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ieN-0004Rm-1l; Thu, 05 Mar 2020 05:02:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ieI-0004R1-Ey
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 05:02:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id y21so2163060pfp.1
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 21:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YpOwyrb2WE/CDlzT3QThQwLnDNsGkooSRHNga96mtQc=;
 b=D4mP+M6uKURXP9HP9xpBxfbWTwS2sXLCAH4XXiVTLLBY2AHKEG4zJCDy0WZMfc5Cdf
 0vWrb8YgmglaHdbSRbvzwy0Ud+GY5kjFjJG5svoO6WbDsiVnX1N3h3+BPsGpiXZjFXIt
 IjlL0igv8nG47EYU1nWRvSzj9kcDGs1Mwl6Xc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YpOwyrb2WE/CDlzT3QThQwLnDNsGkooSRHNga96mtQc=;
 b=Gl2KdJKL8TGmLasGbHDIFJQKhsc0P7o5Qdwbz9nZ1Zp/fGOiRBnz8LSdJfx8wHEpHj
 xz0TDz4SgYF7zUkXmCwvnSetqm8QbjPiu3wMngs2mciclBvgkTCXKUliZVZ71j4BhIMr
 TBq3rzjtrFn3d+NaAZkf3LUPdVhYWHDYbAR9z7+FVMWlXP7xdaWz47hV7h85vm/GEjLp
 6nTuNnpt6KW42wEftByfpKbaHy6HNInqDzHzM+B09AyQRYiLLnG8Ku9r1qyNDvnR1FQd
 EkLiftP2XFk/jfvg6lgM2mepc3S42DYdhYpm+mVja3nd+9lt86qSU6GB3qEe6vZKjACx
 5dcg==
X-Gm-Message-State: ANhLgQ2VpmO0L6++QopXVhvzJMD2nJxdQb2foqXLZySA4JDh90/o+VNM
 KoKp0/1tX/qtFKNbYKDi2Pi6OA==
X-Google-Smtp-Source: ADFU+vtsPUj4UrzYUbkDsFFzdcapU3JttJFjuZrekealA4hSmKDIUgQOkMkXBsfF9VaQPKePqPog4A==
X-Received: by 2002:a63:4a19:: with SMTP id x25mr5914511pga.167.1583384535762; 
 Wed, 04 Mar 2020 21:02:15 -0800 (PST)
Received: from ryzen.cs.washington.edu ([2607:4000:200:11:e9fe:faad:3d84:58ea])
 by smtp.gmail.com with ESMTPSA id y7sm17820466pfq.15.2020.03.04.21.02.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 21:02:14 -0800 (PST)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v5 0/4] eBPF JIT for RV32G
Date: Wed,  4 Mar 2020 21:02:03 -0800
Message-Id: <20200305050207.4159-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_210218_526460_9496073E 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-kernel@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds an eBPF JIT for 32-bit RISC-V (RV32G) to the kernel,
adapted from the RV64 JIT and the 32-bit ARM JIT.

There are two main changes required for this to work compared to
the RV64 JIT.

First, eBPF registers are 64-bit, while RV32G registers are 32-bit.
BPF registers either map directly to 2 RISC-V registers, or reside
in stack scratch space and are saved and restored when used.

Second, many 64-bit ALU operations do not trivially map to 32-bit
operations. Operations that move bits between high and low words,
such as ADD, LSH, MUL, and others must emulate the 64-bit behavior
in terms of 32-bit instructions.

Supported features:

The RV32 JIT supports the same features and instructions as the
RV64 JIT, with the following exceptions:

- ALU64 DIV/MOD: Requires loops to implement on 32-bit hardware.

- BPF_XADD | BPF_DW: There's no 8-byte atomic instruction in RV32.

These features are also unsupported on other BPF JITs for 32-bit
architectures.

Testing:

- lib/test_bpf.c
test_bpf: Summary: 378 PASSED, 0 FAILED, [349/366 JIT'ed]
test_bpf: test_skb_segment: Summary: 2 PASSED, 0 FAILED

The tests that are not JITed are all due to use of 64-bit div/mod
or 64-bit xadd.

- tools/testing/selftests/bpf/test_verifier.c
Summary: 1415 PASSED, 122 SKIPPED, 43 FAILED

Tested both with and without BPF JIT hardening.

This is the same set of tests that pass using the BPF interpreter
with the JIT disabled.

Running the BPF kernel tests / selftests on riscv32 is non-trivial,
to help others reproduce the test results I made a guide here:
https://github.com/lukenels/meta-linux-utils/tree/master/rv32-linux

Verification and synthesis:

We developed the RV32 JIT using our automated verification tool,
Serval. We have used Serval in the past to verify patches to the
RV64 JIT. We also used Serval to superoptimize the resulting code
through program synthesis.

You can find the tool and a guide to the approach and results here:
https://github.com/uw-unsat/serval-bpf/tree/rv32-jit-v5

Thanks again for all the comments!

Changelog:

v4 -> v5:
  * Factored common code (build_body, bpf_int_jit_compile, etc)
    to bpf_jit_core.c (Björn Töpel).
  * Moved RV32-specific changes to bpf_jit.h from patch 1 to patch 2
    (Björn Töpel).
  * Removed "_rv32_" from function names in JIT as it is
    redundant (Björn Töpel).
  * Added commit message to MAINTAINERS and made sure to keep
    entries in order (Andy Shevchenko).

v3 -> v4:
  * Added more comments and cleaned up style nits (Björn Töpel).
  * Factored common code in RV64 and RV32 JITs into a separate header
    (Song Liu, Björn Töpel).
  * Added an optimization in the BPF_ALU64 BPF_ADD BPF_X case.
  * Updated MAINTAINERS and kernel documentation (Björn Töpel).

v2 -> v3:
  * Added support for far jumps / branches similar to RV64 JIT.
  * Added support for tail calls.
  * Cleaned up code with more optimizations and comments.
  * Removed special zero-extension instruction from BPF_ALU64
    case (Jiong Wang).

v1 -> v2:
  * Added support for far conditional branches.
  * Added the zero-extension optimization (Jiong Wang).
  * Added more optimizations for operations with an immediate operand.

Luke Nelson (4):
  riscv, bpf: factor common RISC-V JIT code
  riscv, bpf: add RV32G eBPF JIT
  bpf, doc: add BPF JIT for RV32G to BPF documentation
  MAINTAINERS: add entry for RV32G BPF JIT

 Documentation/admin-guide/sysctl/net.rst      |    3 +-
 Documentation/networking/filter.txt           |    2 +-
 MAINTAINERS                                   |   13 +-
 arch/riscv/Kconfig                            |    2 +-
 arch/riscv/net/Makefile                       |    9 +-
 arch/riscv/net/bpf_jit.h                      |  514 +++++++
 arch/riscv/net/bpf_jit_comp32.c               | 1310 +++++++++++++++++
 .../net/{bpf_jit_comp.c => bpf_jit_comp64.c}  |  605 +-------
 arch/riscv/net/bpf_jit_core.c                 |  166 +++
 9 files changed, 2018 insertions(+), 606 deletions(-)
 create mode 100644 arch/riscv/net/bpf_jit.h
 create mode 100644 arch/riscv/net/bpf_jit_comp32.c
 rename arch/riscv/net/{bpf_jit_comp.c => bpf_jit_comp64.c} (69%)
 create mode 100644 arch/riscv/net/bpf_jit_core.c

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Song Liu <songliubraving@fb.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: Andrii Nakryiko <andriin@fb.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: "Björn Töpel" <bjorn.topel@gmail.com>
Cc: Luke Nelson <luke.r.nels@gmail.com>
Cc: Xi Wang <xi.wang@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: Stephen Hemminger <stephen@networkplumber.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-doc@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: bpf@vger.kernel.org
Cc: linux-riscv@lists.infradead.org

-- 
2.20.1


