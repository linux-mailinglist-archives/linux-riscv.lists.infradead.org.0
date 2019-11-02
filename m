Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A4AECC24
	for <lists+linux-riscv@lfdr.de>; Sat,  2 Nov 2019 01:10:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WsWHBoiiBH7tQ7gltNPBoPLAoumHIbr/kZC0pWRrkIU=; b=ATvYlOqHQuggSF
	fvUiB4LLiGOVVhdmaio0P/O0Y5rq8JzhL4Mer4ZFbUKqdHO809EwTq8XLf4ZbhqS83ramuG2rFuww
	cV4mM9aQXn/2k91jsCGhmo7nVcdhhQgLA3c83MVyMrMPC52271DBDV1OVWy5VI8lJxUKKL+3cgkjA
	VrlwatYVGKR5gkvMC4LMJVp+DKhMxHBP6QnTbihvtKS76XnJFCLBMjjbg5G5w1MTNgCo3DaK6tMJ/
	+Rtpi+/fcJXyFObu4oHRisTgaz8b1Xcf3f+zfV7+KX502TEijfDwgTaUnCRqqh+LtmC6FVrEHujeE
	Brk68VCPETahKeOXAqMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQgzm-0003M7-Uq; Sat, 02 Nov 2019 00:10:22 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQgzk-0003Lj-35
 for linux-riscv@lists.infradead.org; Sat, 02 Nov 2019 00:10:22 +0000
Received: by mail-io1-xd42.google.com with SMTP id p6so12670964iod.7
 for <linux-riscv@lists.infradead.org>; Fri, 01 Nov 2019 17:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=R4g9gOLIew2+KTvYBHfgUUJIvnc8PoIFwQ4bbvEGKSM=;
 b=ew0T8k9aits0F01j0SCwzTDVdrwqraAac6R6T/eJc3oSA2z3b/L47RmzsCJDmrKCdm
 xRmK251jDrQNYOCPOsfqriSuW+FWLrHxW/I13haysmKdGOl/yD/1OhzNCfKoeb5KaHJQ
 PTrYhDqOCfRySq4ojgXSUbkhYs+BhrJxBuH4XpYljYx829VVbV7aP2Xz/O09EWhj0BQJ
 /H5XaERUqLs4fsF2mOjqneZa7t6ac2FZpk/H09BNkp5hyWZ2e+RK2Nj4AbPaoKaopXXB
 LgcXTa4dpNMQcX2TK/HPQlPOEVHaemD/CvJBb0zfSCPKqQROlSe91O/gAg84p7Gwl0C2
 OlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=R4g9gOLIew2+KTvYBHfgUUJIvnc8PoIFwQ4bbvEGKSM=;
 b=fBhu4grrxcoUGsyOrJ0iP8uT/mPGqO5haqTcr5B2IDfMycyBkFCuLHlm7vxIVxybsB
 P5fqdaG0v2MtEjLhLhqwSM49A8OxCrVpBMeD4fubERf3A/VDT3+gKOvFW/b0swW6E5gv
 qjGzX5SW24gDA4y20QKyTXdSET2S2mxBzlPi0i07266MsNvKkLgHG6kBQp9eA3mOy7PB
 DwV7Lf2ei9nqwDpAoddd2xsPVyUUd5miW42zrfzALQI+jk+1DEm1hq7PuLLmPcsYIH2e
 ACExNnaeusdlphRkY2Rd2FIe39dTGO8ySm9sCvwCXJX53AoUZRgozE6FtroZh+YMePYr
 grHw==
X-Gm-Message-State: APjAAAVaJc6lX7jnKiQdEPjlhuGuwJvb+OEGQo9RT8FL0DbtQ0J5oh8x
 RjCPkmTKW/j6qwTSuSrgnNPYEQ==
X-Google-Smtp-Source: APXvYqxGpyL4YgS3iSeyRBb2/XoW4OF6ZRzRHuG1o1Desi8MbbyMgsZb3vvZgX51aCkTVbWIlDWxLg==
X-Received: by 2002:a5d:94d8:: with SMTP id y24mr5101499ior.131.1572653418511; 
 Fri, 01 Nov 2019 17:10:18 -0700 (PDT)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id m9sm1259660ilc.44.2019.11.01.17.10.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 17:10:18 -0700 (PDT)
Date: Fri, 1 Nov 2019 17:10:16 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.4-rc6
Message-ID: <alpine.DEB.2.21.9999.1911011707090.16921@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_171020_153555_6E2ABAE5 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit d6d5df1db6e9d7f8f76d2911707f7d5877251b02:

  Linux 5.4-rc5 (2019-10-27 13:19:19 -0400)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc6

for you to fetch changes up to 1d9b0b66c3ef03e42db63068e1a4e7250992e2b1:

  MAINTAINERS: Change to my personal email address (2019-10-30 01:03:34 -0700)

----------------------------------------------------------------
RISC-V updates for v5.4-rc6

One fix for PCIe users:

- Fix legacy PCI I/O port access emulation

One set of cleanups:

- Resolve most of the warnings generated by sparse across arch/riscv.
  No functional changes

And one MAINTAINERS update:

- Update Palmer's E-mail address

----------------------------------------------------------------
Palmer Dabbelt (1):
      MAINTAINERS: Change to my personal email address

Paul Walmsley (6):
      riscv: add prototypes for assembly language functions from head.S
      riscv: init: merge split string literals in preprocessor directive
      riscv: mark some code and data as file-static
      riscv: add missing header file includes
      riscv: fp: add missing __user pointer annotations
      riscv: for C functions called only from assembly, mark with __visible

Yash Shah (1):
      RISC-V: Add PCIe I/O BAR memory mapping

 MAINTAINERS                         |  6 +++---
 arch/riscv/include/asm/io.h         |  7 +++++++
 arch/riscv/include/asm/irq.h        |  3 +++
 arch/riscv/include/asm/pgtable.h    |  7 ++++++-
 arch/riscv/include/asm/switch_to.h  |  1 +
 arch/riscv/kernel/cpufeature.c      |  1 +
 arch/riscv/kernel/head.h            | 21 +++++++++++++++++++++
 arch/riscv/kernel/irq.c             |  2 +-
 arch/riscv/kernel/module-sections.c |  1 +
 arch/riscv/kernel/process.c         |  2 ++
 arch/riscv/kernel/ptrace.c          |  4 ++--
 arch/riscv/kernel/reset.c           |  1 +
 arch/riscv/kernel/setup.c           |  2 ++
 arch/riscv/kernel/signal.c          |  8 ++++----
 arch/riscv/kernel/smp.c             |  2 ++
 arch/riscv/kernel/smpboot.c         |  5 ++++-
 arch/riscv/kernel/syscall_table.c   |  1 +
 arch/riscv/kernel/time.c            |  1 +
 arch/riscv/kernel/traps.c           |  5 +++--
 arch/riscv/kernel/vdso.c            |  3 ++-
 arch/riscv/mm/context.c             |  1 +
 arch/riscv/mm/fault.c               |  2 ++
 arch/riscv/mm/init.c                |  5 +++--
 arch/riscv/mm/sifive_l2_cache.c     |  2 +-
 24 files changed, 75 insertions(+), 18 deletions(-)
 create mode 100644 arch/riscv/kernel/head.h

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
