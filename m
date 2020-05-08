Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17401CB791
	for <lists+linux-riscv@lfdr.de>; Fri,  8 May 2020 20:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2tA1zP7hu7E8xr10Gwcfc3VadGWJSXb2fISg7SkRPxQ=; b=CQ3Swe81HP1PsPFXIad7uXD0oR
	eKHAiBNStUVIznJP2x7kS8xbfgstiHh3sZXNcZ4oXzBehdQ44h2x0U7r5J+Ud5QSLIC5TfDOFtPnH
	ThArCmxBnGI4QKjbG/0MXWyqFlv7zBudkCmcup5flvfuiL0YFRvINwxjwEKxB8VZFImyL5kne8sMX
	VMMzSPQZkWbCumN8Fj/a9X1SZHwRMD1UToVMWEvfMP9WzrvWj6hWni2Nht2c7BloijuRJ0LYzDAbW
	9q7alnzhu7LaxcironCBM2KmlRz5EegmK4UiGnEtROL3UQtr1LWcliZ6o3pQx3NClpCx3CZpW8JL7
	AWomXGDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX81n-0001Ui-0h; Fri, 08 May 2020 18:47:19 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX81k-0001U5-Cj
 for linux-riscv@lists.infradead.org; Fri, 08 May 2020 18:47:18 +0000
Received: by mail-pl1-x644.google.com with SMTP id t16so1116909plo.7
 for <linux-riscv@lists.infradead.org>; Fri, 08 May 2020 11:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=2tA1zP7hu7E8xr10Gwcfc3VadGWJSXb2fISg7SkRPxQ=;
 b=ALJGwowB2DhmNrLBkC5TvLAynj0KTLZmI46t9FYy0pnp4OHc03/RBh6qgxjINbVRQx
 cpJyOT2H9D48oxDfsBf1F1FBIFW6QQh1XAy4UQ888vUkSUh9r2fP1rURo+48wzyeHOWb
 iOTTX+J2IiR7PKzFJTioqHolR7oDM8lYgnSNJfPub4RTr9//biR9dSq02ohUEst++4M7
 ISo1L2whwgXazS2NdT/tls0/zW1LFRndCAFaYzWkpmZN57j43oCqF9RCHAmoA0OAyH11
 o41Xw+xWUy57SeW+DqV9bhsPFG3pECFYZZ4m6GCPW26ZyGW3dIh6FCH+/sM7k3hXvB/n
 9UrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=2tA1zP7hu7E8xr10Gwcfc3VadGWJSXb2fISg7SkRPxQ=;
 b=DTK35D1kXBi5JU+TwSmMbvxiX88vLKXObAmXgTEFV71TffikUTxkRJPFXtxGNDRQpR
 ii852s456GGSihvXqQR+S6dxQqgRXjpnYq9QxxgYl28CYRX5yNFaVIM3eCZ1s0FA45Vk
 YFoXN7VpB+CNxEkNw6ExjDVhCrFGmZ//gspx8lHgWL4jrsyDUYuwjMDanaAZQf41SdId
 02Ux/hyQmRZPoA4PEWJOQOtmwI248SN+KwbnuGKSMQ9w5CS1Pmk/r22wYcUfhyblTmcK
 YIg7N4OUbeAuP14fom7KJuAQeJ4PE7rkIOlICOR9WZPZFLEPM5MA/MkVQZZCaZXLAImo
 IIEw==
X-Gm-Message-State: AGi0PuYdQVEXef4LzbIG4c9BOP0ehDkrn5UILRml5koiUY7Bx+hk7hta
 NhSdO8PIEHekgmR+mTvDcqZOULaGbVc=
X-Google-Smtp-Source: APiQypL6xxJoPjSqNwoBDWP883ePodLOm4PYJpDnqIqsdM/QMjrLcsb2G/Waay3RFVFs9WecHfvv9g==
X-Received: by 2002:a17:90b:19c9:: with SMTP id
 nm9mr7766474pjb.86.1588963634825; 
 Fri, 08 May 2020 11:47:14 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id j2sm2609271pfb.73.2020.05.08.11.47.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 11:47:13 -0700 (PDT)
Date: Fri, 08 May 2020 11:47:13 -0700 (PDT)
X-Google-Original-Date: Fri, 08 May 2020 11:47:08 PDT (-0700)
Subject: [GIT PULL] RISC-V Fixes for 5.7-rc5
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-81c83c19-6f5d-4ed1-a0bb-26accf4b7d3a@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_114716_498224_EC38A880 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

merged tag 'riscv-for-linus-5.7-rc4'
The following changes since commit 1d2cc5ac6f6668cc15216d51051103c61467d7e8:

  Merge tag 'riscv-for-linus-5.7-rc4' of git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux (2020-04-29 09:25:32 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.7-rc5

for you to fetch changes up to 73cb8e2a5863ccc5215660f5123db621bd57dff7:

  RISC-V: Remove unused code from STRICT_KERNEL_RWX (2020-05-05 17:02:14 -0700)

----------------------------------------------------------------
RISC-V Fixes for 5.7-rc5

This contains a smattering of fixes and cleanups that I'd like to target for
5.7:

* Dead code removal.
* Exporting riscv_cpuid_to_hartid_mask for modules.
* Per-CPU tracking of ISA features.
* Setting max_pfn correctly when probing memory.
* Adding a note to the VDSO so glibc can check the kernel's version without a
  uname().
* A fix to force the bootloader to initialize the boot spin tables, which still
  get used as a fallback when SBI-0.1 is enabled.

----------------------------------------------------------------
Andreas Schwab (1):
      riscv: add Linux note to vdso

Anup Patel (3):
      RISC-V: Export riscv_cpuid_to_hartid_mask() API
      RISC-V: Add bitmap reprensenting ISA features common across CPUs
      RISC-V: Remove N-extension related defines

Atish Patra (1):
      RISC-V: Remove unused code from STRICT_KERNEL_RWX

Vincent Chen (1):
      riscv: set max_pfn to the PFN of the last page

Zong Li (1):
      riscv: force __cpu_up_ variables to put in data section

 arch/riscv/include/asm/csr.h        |  3 --
 arch/riscv/include/asm/hwcap.h      | 22 ++++++++++
 arch/riscv/include/asm/set_memory.h |  8 ----
 arch/riscv/kernel/cpu_ops.c         |  4 +-
 arch/riscv/kernel/cpufeature.c      | 83 +++++++++++++++++++++++++++++++++++--
 arch/riscv/kernel/smp.c             |  2 +
 arch/riscv/kernel/vdso/Makefile     |  2 +-
 arch/riscv/kernel/vdso/note.S       | 12 ++++++
 arch/riscv/mm/init.c                | 19 +--------
 9 files changed, 121 insertions(+), 34 deletions(-)
 create mode 100644 arch/riscv/kernel/vdso/note.S

