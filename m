Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F4616EC9F
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Feb 2020 18:37:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KNvnzC4oy7KeGoItCm2P3D+dtl4fdF1QEHNvZmvd+Fo=; b=H55dvrZUKN5c+gpAx+8kLZfysw
	DF1CQ/Cb1WeKJray1rtzThxi0A9QuOP1+/CJx22JzRyNI8aHEhjPJGpMEj9e/Nl5UZTmYTc6zEuR2
	pWpcx+EOYYRwspX7Kp/401+KsjUSpMfs58mpni3mMD8HdtSccoDQETc4PjViiSTq94s32fy+IffIU
	IwL5oz/p07uaKyEmR89tPh7/hV1wlZ8ZBqJrlZLDGER4WSZHBlB9AGL5FkaN443QzXiZHV9dhko5U
	BiwxIQZBNTsbQGmzKQfDsgqUvGYfxp8vvImFZ2M0rIdSLfi1nxzEej4W6Rw/l2eAUochRh/DSN5nI
	khLxxsEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6e9K-0000yt-BM; Tue, 25 Feb 2020 17:37:38 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6e9H-0000xc-QD
 for linux-riscv@lists.infradead.org; Tue, 25 Feb 2020 17:37:37 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 12so1601067pjb.5
 for <linux-riscv@lists.infradead.org>; Tue, 25 Feb 2020 09:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:cc:from:to:message-id;
 bh=KNvnzC4oy7KeGoItCm2P3D+dtl4fdF1QEHNvZmvd+Fo=;
 b=RcRR219wmefc2NDuy99V7MKkcPkTiKEfsKTV5RkD2Ese5TwGN7pSKpdM/iepI+egaR
 25ig4ZTc6/gdu4GjFG6aY9u10ueyVjBDfw13DCbXSHO+llzTWH03d7m+TB0wCiBQWhKv
 7FYDowj8+TnXEzMpewLZzSyPKQcchlihzyc6XrJQpbkfp8O8pxvQYVUFvUpnrHIDnsYR
 13rAh13fXoDnncztPYwXXlNwGVOD1Qk0mw3BJtcfmEFAZY4PNwhUUfoWMrbNvw2LN+Yz
 nLbjyikj26YPDwFcspHeM4iKgtSBHaGl1I2lqSB9C5JpMFmREE+zd4QXoH++2XBVQKu5
 W2Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=KNvnzC4oy7KeGoItCm2P3D+dtl4fdF1QEHNvZmvd+Fo=;
 b=tXTMWMXSF/b/MfRkrDWCsgFmvQ3y5LxNCej86MojwVNjOA9MGmlw9akyPYw09Zybg+
 3Z6KTLBHzoaS/uBqBmTIC7QthEzicMxIR0DTiZKuemJsGGBA64KlHIJyANy41iQjE068
 HNhaH7kkyvksvGozHPJgQY1VTCxHPu678CBPKBwE1bpipNukKr2i3tFXFjEFc+fMGyhF
 dZj9sQ9gl3yzjWdk8NTJXSrzGqcehcTccsqtM5wW4kegYcPFpahOw+P0laewpcb02sXt
 YGp5L7AvT9pKlSWI+YA3IEvy97FKPL45KF21y/HDObFbWz0XHpUnrIUovHP4G780+2vj
 7+rA==
X-Gm-Message-State: APjAAAUg41kJGMaWYru95PXMusMO2WDbU2rcvQD/tm0MW/HUYGlrWhU+
 wBoPsDehIk/ZVjNjMP3BtTCsBY4qzbnO7g==
X-Google-Smtp-Source: APXvYqx2NqMCDRlWrHkTS9e3SAEWFrbYlWqkJCzFqzk781hycVlBMo6fbq5zxxw4FbS1uXdqczmr0A==
X-Received: by 2002:a17:90a:8001:: with SMTP id b1mr63638pjn.39.1582652252230; 
 Tue, 25 Feb 2020 09:37:32 -0800 (PST)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id q6sm17721821pfh.127.2020.02.25.09.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 09:37:31 -0800 (PST)
Date: Tue, 25 Feb 2020 09:37:31 -0800 (PST)
X-Google-Original-Date: Tue, 25 Feb 2020 09:35:29 PST (-0800)
Subject: [GIT PULL] RISC-V Fixes for 5.6-rc4
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-464e74b9-125c-42e3-9384-60c871d22cfd@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_093735_879293_2C074FE3 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following changes since commit 11a48a5a18c63fd7621bb050228cebf13566e4d8:

  Linux 5.6-rc2 (2020-02-16 13:16:59 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linux-5.6-rc4

for you to fetch changes up to 8458ca147c204e7db124e8baa8fede219006e80d:

  riscv: adjust the indent (2020-02-24 13:12:53 -0800)

----------------------------------------------------------------
RISC-V Fixes for 5.6-rc4

This tag contains a handful of RISC-V related fixes that I've collected and
would like to target for 5.6-rc4:

* A fix to set up the PMPs on boot, which allows the kernel to access memory on
  systems that don't set up permissive PMPs before getting to Linux.  This only
  effects machine-mode kernels, which currently means only NOMMU kernels.
* A fix to avoid enabling supervisor-mode interrupts when running in
  machine-mode, also only for NOMMU kernels.
* A pair of fixes to our KASAN support to avoid corrupting memory.
* A gitignore fix.

This boots on QEMU's virt board for me.

----------------------------------------------------------------
Anup Patel (1):
      RISC-V: Don't enable all interrupts in trap_init()

Damien Le Moal (1):
      riscv: Fix gitignore

Greentime Hu (1):
      riscv: set pmp configuration if kernel is running in M-mode

Zong Li (2):
      riscv: allocate a complete page size for each page table
      riscv: adjust the indent

 arch/riscv/boot/.gitignore   |  2 ++
 arch/riscv/include/asm/csr.h | 12 ++++++++++
 arch/riscv/kernel/head.S     |  6 +++++
 arch/riscv/kernel/traps.c    |  4 ++--
 arch/riscv/mm/kasan_init.c   | 53 ++++++++++++++++++++++++++------------------
 5 files changed, 53 insertions(+), 24 deletions(-)

