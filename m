Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FD5120096
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 10:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vpY7MBXQP9D/muTQHYI2tuNdnNT18mzMK9mr9lmyumc=; b=an/HphUReDLi9l
	xOJp3LmJitKiZFIX1oLtpcf2vitrKAzO0y1xYiCN/dJXNgnSQsAlqeTYIZAgCWVNKReu1EYu1//9y
	92WDmMHPMQ9dPKcg/43Bc3eRPCaFh546G+wQax3TvDGRrtP6/94bInnsWlhfPIIqnXoiFnRFxpyoV
	z7Qd+J6/rmClI4Mv0iZqVqqGKONqQ3ouXcwMDZyLXVIyGqTmTgxGOF2Gl7QmMYnSlUlSFXf0RGAp+
	Jd/OTm4Vh4FhegLEwM3/vV53GwJkbpKD02BsJFNJ5HhPQIcy6XHwrK+Ow3sBmxOJix+h/EV9Mc08Y
	AQ14ryuuwKgw/a3DICdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmRy-0003JW-IC; Mon, 16 Dec 2019 09:13:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmRt-0003Gy-AX
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 09:13:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id b19so5254260pfo.2
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 01:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vpY7MBXQP9D/muTQHYI2tuNdnNT18mzMK9mr9lmyumc=;
 b=WXf++/PI7Qj1eL7NF3/ysask8jTXfygbq3KmxUxE4Ly3cTk1wkgW9Oh9lRRCCaRqux
 SlKDDtj6aug//loLK7vPWhfbUKbw0Pw0jawhDC8jAVB6/2TUptn1mXUtLZEDTIQPyHCt
 yUBIez9eXZJVQPXdOBicsnh8u5wBSTHcmooFYg8N0xFyCxaraVtG3iAxOETh+JzC70ah
 vdVeV4rDnqq2ZLIlovXlRf7hLcU7HDnTqJy1/oowuIjgyyRPsMALcKMJcDhoD7i2pdTU
 nYu/fmY7k28qZC3zNCm09EUnRGlMRGUij0DNVh6EIeHfVTFF5OFYhe9t4FlmgbRiAvs6
 aNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vpY7MBXQP9D/muTQHYI2tuNdnNT18mzMK9mr9lmyumc=;
 b=GGRAigDIacYiTNvYpcFdx5082LbWDRawq82gcB76ZfoW7sL0oWSUDR6GK+OQewEsrZ
 XAimpPzaA+5ZJEVPkTAy81IhfIIqfXf4BK5LxSxF83R8KW1ahh0jc+9FvFv9RVZEVMBR
 arGrMBonqVxeDoI+8H3FfvYC5q4tPKQo4Uj/LIdHI/UMQ+I/12Wu2X5+C2BsYtvZruBG
 VFCgJ1Zm303DwyFJxbg+lKVIbncbhpEoUCFGJ3vzJWc8KZMrRVL86BYf/SF+7UsqcchK
 bdc/R6VQCROOWZZ2I/ochah+GpFnCuaUTjCKb+fIM15oOVkea+JE+r9tNvtJK6BKw4n4
 b8jw==
X-Gm-Message-State: APjAAAXqT6ZwBN/MH+J0aCOZDzqrVCI33lM0zEW2QqWqHlWoMcRlBH8q
 /QOc82csRGiHv58RS+rtB38=
X-Google-Smtp-Source: APXvYqzaZ3jJM3dOls1Pof33GJoVy83OTL34tNJngEBHjYW5m38n1ijiIvLP4nD5pePW34rW+GPiFQ==
X-Received: by 2002:a63:364d:: with SMTP id d74mr16898806pga.408.1576487632409; 
 Mon, 16 Dec 2019 01:13:52 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr04-ext.fm.intel.com.
 [192.55.55.39])
 by smtp.gmail.com with ESMTPSA id x21sm12505033pfn.164.2019.12.16.01.13.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 01:13:51 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next v2 0/9] riscv: BPF JIT fix,
 optimizations and far jumps support
Date: Mon, 16 Dec 2019 10:13:34 +0100
Message-Id: <20191216091343.23260-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011353_388246_A6A55972 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-riscv@lists.infradead.org, bpf@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi!

This series contain one non-critical fix, support for far jumps. and
some optimizations for the BPF JIT.

Previously, the JIT only supported 12b branch targets for conditional
branches, and 21b for unconditional branches. Starting with this
series, 32b branching is supported.

As part of supporting far jumps, branch relaxation was introduced. The
idea is to start with a pessimistic jump (e.g. auipc/jalr) and for
each pass the JIT will have an opportunity to pick a better
instruction (e.g. jal) and shrink the image. Instead of two passes,
the JIT requires more passes. It typically converges after 3 passes.

The optimizations mentioned in the subject are for calls and tail
calls. In the tail call generation we can save one instruction by
using the offset in jalr. Calls are optimized by doing (auipc)/jal(r)
relative jumps instead of loading the entire absolute address and
doing jalr. This required that the JIT image allocator was made RISC-V
specific, so we can ensure that the JIT image and the kernel text are
in range (32b).

The last two patches of the series is not critical to the series, but
are two UAPI build issues for BPF events. A closer look from the
RV-folks would be much appreciated.

The test_bpf.ko module, selftests/bpf/test_verifier and
selftests/seccomp/seccomp_bpf pass all tests.

RISC-V is still missing proper kprobe and tracepoint support, so a lot
of BPF selftests cannot be run.


Thanks,
Björn

v1->v2: [1]
 * Removed unused function parameter from emit_branch()
 * Added patch to support far branch in tail call emit

[1] https://lore.kernel.org/bpf/20191209173136.29615-1-bjorn.topel@gmail.com/


Björn Töpel (9):
  riscv, bpf: fix broken BPF tail calls
  riscv, bpf: add support for far branching
  riscv, bpf: add support for far branching when emitting tail call
  riscv, bpf: add support for far jumps and exits
  riscv, bpf: optimize BPF tail calls
  riscv, bpf: provide RISC-V specific JIT image alloc/free
  riscv, bpf: optimize calls
  riscv, bpf: add missing uapi header for BPF_PROG_TYPE_PERF_EVENT
    programs
  riscv, perf: add arch specific perf_arch_bpf_user_pt_regs

 arch/riscv/include/asm/perf_event.h          |   4 +
 arch/riscv/include/asm/pgtable.h             |   4 +
 arch/riscv/include/uapi/asm/bpf_perf_event.h |   9 +
 arch/riscv/net/bpf_jit_comp.c                | 531 ++++++++++---------
 tools/include/uapi/asm/bpf_perf_event.h      |   2 +
 5 files changed, 312 insertions(+), 238 deletions(-)
 create mode 100644 arch/riscv/include/uapi/asm/bpf_perf_event.h

-- 
2.20.1


