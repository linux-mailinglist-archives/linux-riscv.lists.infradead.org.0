Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D491A1F6D09
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 19:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=osYKD6rW/9QKGBBLAoQd2ZrBPFatLhRpJY9OJfIaprQ=; b=mQTEPN/RmYGAZzgToA57sY23e8
	QSogiCxmwwndFbbAnF2OVrbp8z46+cbo5LYfcv2AwCF3zj1X7bMWGdJ5v/r/6gMbc2tYOWbwspAX5
	mgtR+aJ8iwMEIaVMT1vYc/wD2gSOtcNgL06c4+9skA11sDvtpGc0r+AtW+erYv8FsJtymsbEty1xU
	+7cQTX2GSZfoYf7ac1aLIhwdfttxRGW7clrUZrcKHwkFvPpBe1asj4IhAfiMb/TTCZp+90kDe3Kgc
	I3pxgeANOMhnKd26alhJGfe0xw7zHb43kb7jSIKvHgQm8tBpEiH+qrmjRB0DwVdTViEKpCKFpI3Dl
	QXYc57CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjROx-0007GX-0Q; Thu, 11 Jun 2020 17:54:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjROs-0007Em-7D
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 17:54:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id e18so2838167pgn.7
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jun 2020 10:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=osYKD6rW/9QKGBBLAoQd2ZrBPFatLhRpJY9OJfIaprQ=;
 b=OP8u+zwhsykLsjNQysre6l5FfAwk7hmhl+MVEqIKbSrpDPU5PmTQ9NGYQVWxNPsRf9
 Ej5uITJXSBBQJE6MfSsWSFEEgeUMVlTBl1Bfs2vtxqGjvcDE0Mesopt03pxwooGUk90f
 R+8jilSFPe4o0m09FbfTF/zXEqD/Ah06AiRkaGCVCwpA+fecP2GAIxsDDoNhfkDMPjWM
 s5S+qALttn4NlQkKZjO4hN4WE1o1XEmE6VIkM56g5qKTHjkOXUZxITS/nFEmXAwYTh7q
 76VTIqMO23wzZrmikkMYwwtjyDg3wuR9AHEjxYXqPt65ayTg21NsqvPSfbbSGUDY+Q1n
 NMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=osYKD6rW/9QKGBBLAoQd2ZrBPFatLhRpJY9OJfIaprQ=;
 b=pal0AKFuCRTsRunXy4tJ7qg8cpi6kLz4XpbdoGpke1YX545dGuSBs5f4YHUNaELIBE
 JOQWcR/fOUoK2FSWSzJCN0A6u7QmPcsR8HVr65pUHRdu+9f5SpZlYY6bg0k2poxL0uW9
 9dJ2Pb1o9za5xcByYXgKYB3dODpf/y8uY4kwaQfexNIWTtnm70J9GYsKFzMLKYJC3Frq
 /8uXB585JbvaiuGeBmstgKzF26Nvc+hZ0d0WeSbgX9y4X8Cy9P0V0Lyht+c4knk+Szs0
 InssVWRy4XHni354ISDkB0PPQaShQFr1MWp/pnGth22Mrx6sC+5te4sr2tPd2+9tNA07
 2HSA==
X-Gm-Message-State: AOAM533/53eqoLS6H/CwX5T5C2s3urv6YrYrAOTSXVWcO8g0YD8Gr9f+
 V1O38e9U0eWRnvIk5gbZxuObawUyXkYSZQ==
X-Google-Smtp-Source: ABdhPJxNIcqcpFRkQgZ2/kYwDJZft6hRYsp7u8NpEkM6Nb/BQW8hIHuFSxJQ9NilVVQTVwU/IXQI8g==
X-Received: by 2002:a63:f642:: with SMTP id u2mr7511591pgj.151.1591898040274; 
 Thu, 11 Jun 2020 10:54:00 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id i34sm3396611pje.10.2020.06.11.10.53.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 10:53:59 -0700 (PDT)
Date: Thu, 11 Jun 2020 10:53:59 -0700 (PDT)
X-Google-Original-Date: Thu, 11 Jun 2020 10:49:16 PDT (-0700)
Subject: [GIT PULL] RISC-V Patches for the 5.8 Merge Window, Part 2
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-70ded5ff-c09c-4703-837e-7ab2d9eea85c@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_105402_313439_EED58582 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following changes since commit 084623e468d535d98f883cc2ccf2c4fdf2108556:

  Merge tag 'modules-for-v5.8' of git://git.kernel.org/pub/scm/linux/kernel/git/jeyu/linux (2020-06-05 12:31:16 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.8-mw1

for you to fetch changes up to 01f76386b0ac0b1c1094456c8f43ea6085fc49d2:

  riscv: set the permission of vdso_data to read-only (2020-06-10 19:47:35 -0700)

----------------------------------------------------------------
RISC-V Patches for the 5.8 Merge Window, Part 2

* Select statements are now sorted alphanumerically.
* Our first-level interrupts are now handled via a full irqchip driver.
* CPU hotplug is fixed.
* Our vDSO calls now use the common vDSO infrastructure.

----------------------------------------------------------------
Anup Patel (7):
      RISC-V: self-contained IPI handling routine
      RISC-V: Rename and move plic_find_hart_id() to arch directory
      irqchip: RISC-V per-HART local interrupt controller driver
      clocksource/drivers/timer-riscv: Use per-CPU timer interrupt
      RISC-V: Remove do_IRQ() function
      RISC-V: Force select RISCV_INTC for CONFIG_RISCV
      RISC-V: Don't mark init section as non-executable

Palmer Dabbelt (1):
      RISC-V: Sort select statements alphanumerically

Vincent Chen (2):
      riscv: use vDSO common flow to reduce the latency of the time-related functions
      riscv: set the permission of vdso_data to read-only

Zong Li (1):
      riscv: fix build warning of missing prototypes

 arch/riscv/Kconfig                         |  74 +++++++++-------
 arch/riscv/include/asm/clocksource.h       |   7 ++
 arch/riscv/include/asm/irq.h               |   5 --
 arch/riscv/include/asm/processor.h         |  13 +--
 arch/riscv/include/asm/smp.h               |   3 +
 arch/riscv/include/asm/vdso.h              |   2 +
 arch/riscv/include/asm/vdso/clocksource.h  |   8 ++
 arch/riscv/include/asm/vdso/gettimeofday.h |  79 +++++++++++++++++
 arch/riscv/include/asm/vdso/processor.h    |  19 ++++
 arch/riscv/include/asm/vdso/vsyscall.h     |  27 ++++++
 arch/riscv/kernel/cpu.c                    |  16 ++++
 arch/riscv/kernel/entry.S                  |   4 +-
 arch/riscv/kernel/irq.c                    |  33 +------
 arch/riscv/kernel/patch.c                  |   1 +
 arch/riscv/kernel/smp.c                    |  11 ++-
 arch/riscv/kernel/time.c                   |   9 ++
 arch/riscv/kernel/traps.c                  |   2 -
 arch/riscv/kernel/vdso.c                   |  24 ++++-
 arch/riscv/kernel/vdso/Makefile            |  12 ++-
 arch/riscv/kernel/vdso/clock_getres.S      |  18 ----
 arch/riscv/kernel/vdso/clock_gettime.S     |  18 ----
 arch/riscv/kernel/vdso/gettimeofday.S      |  18 ----
 arch/riscv/kernel/vdso/vdso.lds.S          |   2 +
 arch/riscv/kernel/vdso/vgettimeofday.c     |  25 ++++++
 arch/riscv/mm/init.c                       |  11 ---
 drivers/clocksource/timer-riscv.c          |  43 ++++++++-
 drivers/irqchip/Kconfig                    |  13 +++
 drivers/irqchip/Makefile                   |   1 +
 drivers/irqchip/irq-riscv-intc.c           | 138 +++++++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c          |  46 +++++-----
 include/linux/cpuhotplug.h                 |   1 +
 31 files changed, 500 insertions(+), 183 deletions(-)
 create mode 100644 arch/riscv/include/asm/clocksource.h
 create mode 100644 arch/riscv/include/asm/vdso/clocksource.h
 create mode 100644 arch/riscv/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/riscv/include/asm/vdso/processor.h
 create mode 100644 arch/riscv/include/asm/vdso/vsyscall.h
 delete mode 100644 arch/riscv/kernel/vdso/clock_getres.S
 delete mode 100644 arch/riscv/kernel/vdso/clock_gettime.S
 delete mode 100644 arch/riscv/kernel/vdso/gettimeofday.S
 create mode 100644 arch/riscv/kernel/vdso/vgettimeofday.c
 create mode 100644 drivers/irqchip/irq-riscv-intc.c

