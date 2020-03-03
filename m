Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0C817696F
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 01:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3D53AC+mvbtFOvWhCdqdKfZxPLHDl2gFgUFn+w2hIMI=; b=T6Qiru0CUNGq2F
	6t+HmS7kQfEceZnSOHpcN65pD+Lo45pm+juh8mOv5dC4dym6WElWj3+H3ERjaG9IgZv8DkxGZPnoL
	ef90ORXi0TS31LjFhSj21mz7UnCGEqAL4ltfixUBlH7yNEpJDVmbR8R5YPbxOqxvssNJEFHIL+6VG
	HK9IoOcbH8xCJ12P3ZbAPgjd8eSVWNGlhVXpapdgqDBTI+NA0nsRATOV6p+lgjIka3z8SARBjesR4
	4+OEfwBDxzHT8KmrRQPsfOcwTvQuz/snYDdc44Fz4nhkk/w6xosAdB9Yc8PBPkn06mWU/6Xq64yJl
	JiBc6q9goULpRQY/P5dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8vln-0004Ej-2E; Tue, 03 Mar 2020 00:50:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8vlj-0004Dt-R2
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 00:50:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id a14so652861pgb.11
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 16:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3D53AC+mvbtFOvWhCdqdKfZxPLHDl2gFgUFn+w2hIMI=;
 b=PpAHUPt4FCpGWNJvv2H+zWoZ/LA1u2BGY9BD6oYuRZ082FfiQItrhfnvk6zxQw5bV0
 S1SqJIvNF4X08qwdo9WXxJfSPlA+HpuXz9dDX83mfanb7Cea9/VK1Osaqx3OT2+cBMrb
 DKheoeY/V9en1FOiSSqFrlw3IyYNvxiMbJMyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3D53AC+mvbtFOvWhCdqdKfZxPLHDl2gFgUFn+w2hIMI=;
 b=Z7YrW8tbLkAFNLrvt2GXpkBYUeYXXVFN/9zWLHnLUhAqHw1GKho0qpUKuj9U+xFQiw
 om6RTHDxYpUcjZyMwlEVRx5ps+ZpFcWAv+RXBTQ58F8ADqskSNvvMJsCfdvp9U6nCml/
 6T5bPa6SwgRMyV2SwLCpDskiEsBnTxLZJKzysCEnyllIVlk1VO2OLg+yQYPqTFQ8Q8yq
 vvHCsyAjP+gwL3z0YIeMlvdeR4LphpjSZtWs8YXDJOCBkCv1uscNmsP8xGh/NDRY8oeW
 1F1i13AVbxQZetvZyhA0qm/ZoOfOendMOwSDCHK5D0wnZWVBWO/upSkypINN6rIDD/Ho
 5q8A==
X-Gm-Message-State: ANhLgQ1W3kkqcFRGUwekjAXkCFt/XpVKTxA9RWCxW6LQSsmRTVVcx+FX
 CxpLhPx1wiXGARvGAgfOOgNTzQ==
X-Google-Smtp-Source: ADFU+vu5i1xpepiSeDF6CXGaG9tUWLD/lfAtDAgCi5AnBUm0RKEt53xDaBdP3NJys5zaFri5Xz/k4g==
X-Received: by 2002:a63:131f:: with SMTP id i31mr1588034pgl.101.1583196639743; 
 Mon, 02 Mar 2020 16:50:39 -0800 (PST)
Received: from ryzen.cs.washington.edu ([2607:4000:200:11:b5cd:49c6:f4f6:8295])
 by smtp.gmail.com with ESMTPSA id c15sm357529pja.30.2020.03.02.16.50.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 16:50:38 -0800 (PST)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v4 0/4] eBPF JIT for RV32G
Date: Mon,  2 Mar 2020 16:50:31 -0800
Message-Id: <20200303005035.13814-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_165043_903111_1D7D4333 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
https://github.com/uw-unsat/serval-bpf/tree/rv32-jit-v4

Thanks again for all the comments!

Changelog:

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
  riscv, bpf: move common riscv JIT code to header
  riscv, bpf: add RV32G eBPF JIT
  bpf, doc: add BPF JIT for RV32G to BPF documentation
  MAINTAINERS: Add entry for RV32G BPF JIT

 Documentation/admin-guide/sysctl/net.rst |    3 +-
 Documentation/networking/filter.txt      |    2 +-
 MAINTAINERS                              |   13 +-
 arch/riscv/Kconfig                       |    2 +-
 arch/riscv/net/Makefile                  |    7 +-
 arch/riscv/net/bpf_jit.h                 |  504 ++++++++
 arch/riscv/net/bpf_jit_comp.c            |  443 +------
 arch/riscv/net/bpf_jit_comp32.c          | 1466 ++++++++++++++++++++++
 8 files changed, 1992 insertions(+), 448 deletions(-)
 create mode 100644 arch/riscv/net/bpf_jit.h
 create mode 100644 arch/riscv/net/bpf_jit_comp32.c

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


