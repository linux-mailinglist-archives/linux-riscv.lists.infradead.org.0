Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC3D1172CD
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 18:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C5b9Uf0GwcHgF5e4Hu2jn/jphfKXR8QqlkLc5ktEGfg=; b=FK2kFGttiHf4hq
	Fin07/8vL47pu6lIYcR8u0ImG5S+fWthgvU1oDaIWw3mJ6U7V8s9sjloTsOxKYSEfDfyHx1UpqgDD
	/vUYCEt4m+KylC0hk+F7KULeJmz58PtmKFcK87GfMS0IcaqA2roczEvZpPz2Jn86NrAa7sZ7EglhE
	aWi5imoM6ksOVJSB/S6FtZc1M9dcT8RIz5N2/zMuYbZq1W9vCXxhQiC1NnJSNVuD1nkAJhFYLSwxh
	ETugJoAxzvU6raFsd3BQDd1AQFkfusTekirW+uFZh3REuJgtH0KKlkVyEHrb4OR5pQ1s6ljY+9TgQ
	qbxiVr/WmSMpk62JHSow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMsy-0004DP-VU; Mon, 09 Dec 2019 17:31:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMsv-0004Cf-Rq
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 17:31:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id k20so6083582pls.3
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 09:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C5b9Uf0GwcHgF5e4Hu2jn/jphfKXR8QqlkLc5ktEGfg=;
 b=R0DMiWmmITpXFdzh6mpq04E2Q0WwhDn2U+6MEj9eH3Oji3lbpC2PI1MVY7zPYRWz6h
 7FORjT0vcuF6Szs09wdad/ixyaHTF2m2jgl9SJtG5P4REhl2mNoVLI44LfdChsY1EkNE
 ybDwEUtLhQT0bb+2BlzraMWr1XlgjlkI9mgquKtGaIMVc7Cvyw9fRYJOEvsX4Fp9zT0a
 h61HzcEp6U6K4JF3Z4uebE77HGj+kx5IRq28G4DmN0VKqkdSXOeb9w+aKY0SoxslunIB
 dlGea1nxMx41HMRweY1LkiYVh1tCKMzru7OVkatGEX0Pip5qBzqTomiW6a6HOEm1ZVOe
 A1mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C5b9Uf0GwcHgF5e4Hu2jn/jphfKXR8QqlkLc5ktEGfg=;
 b=Ur8zPsdkS5c9JAHd9SocztqAftljUzRe7ljBN6E4itwoNwK9chqqgln9s+a4U45ten
 jx2E/cjRW10P8FgRjveIRlAWdmrENucj6txvEuJLu/8E+Vpio+RQSHytFeNCrHJZM+m1
 j6alXPBl9v1FX178qUoLScw92gdEXDLJY/JNd7T+GWerJgse6xyftfWVotwm8nflR7ol
 FgRsxDlNwMHSUFw1PU7G2ItmJ6Z9ctTZewgki33WpIsWEVH/ELc+/Rgyq6+hjBSl1d7A
 6yQ7Qqk0r2NKHPea0U3UarKxM16S8fobkn31SabfrrQgSTIWock2JY/TghZPDFyLicJx
 /nBg==
X-Gm-Message-State: APjAAAWLNtgNb9vV97HEW/t94Fy/SkJgzrCbhZBv/wxwg9vcycyYaNpf
 NxX8uqM1NMAcpl91F0p00EoZKURA5aQ=
X-Google-Smtp-Source: APXvYqzWxC0EBbOgVhQuUBy/Sisu4ZBPnVmN4PGO9kKjPX6U3FlNELa35UdcgXfXKJm9UNv6AWWA9Q==
X-Received: by 2002:a17:90a:c706:: with SMTP id o6mr165655pjt.82.1575912708506; 
 Mon, 09 Dec 2019 09:31:48 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id d23sm54943pfo.176.2019.12.09.09.31.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 09:31:47 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next 0/8] riscv: BPF JIT fix,
 optimizations and far jumps support
Date: Mon,  9 Dec 2019 18:31:28 +0100
Message-Id: <20191209173136.29615-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_093149_927266_5265B14E 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The test_bpf.ko module and test_verifier from selftests pass all tests.

RISC-V is still missing proper kprobe and tracepoint support, so a lot
of BPF selftests cannot be run.


Thanks,
Björn


Björn Töpel (8):
  riscv, bpf: fix broken BPF tail calls
  riscv, bpf: add support for far branching
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
 arch/riscv/net/bpf_jit_comp.c                | 511 +++++++++++--------
 tools/include/uapi/asm/bpf_perf_event.h      |   2 +
 5 files changed, 310 insertions(+), 220 deletions(-)
 create mode 100644 arch/riscv/include/uapi/asm/bpf_perf_event.h

-- 
2.20.1


