Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0614F13064F
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Jan 2020 07:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Vu/BIPQbyqubOJuLGv4uKPQrPxznt9X7LWYfO/wIAnA=; b=L56
	9G7sLkuM8VN/gRzupIiJaI5NqB1qjBrxCx3R5Sz+r3RnSMcqhtoWsKllWoF1Vv3IOJhYbUMnIwz+x
	gQwxWrPdjcFTUhLIqzQDOH+8NiklfBhjo26NVR7rOo2/JSu85SkhKqF7doEFuuZB6B4sACYbn6tmD
	FeBxW6qUiwRKljQwAF7JIMnMYq48DydLGZBe6WvHHtBBnxpH0sumewSD9RAA8AWkyhN+b2eNakGeA
	8aFAfAmOZQSgpJs0STWdHN+gkiAN3cqb4N2Bq2CKHO2I2K6wTDDYwUBzAZ8iqlw6D68wW520Sow8l
	ONcsmc36HIWc3qnGB2Gt+oKtkjbP9uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inz1T-0005k9-Q4; Sun, 05 Jan 2020 06:04:23 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inz1Q-0005jT-15
 for linux-riscv@lists.infradead.org; Sun, 05 Jan 2020 06:04:21 +0000
Received: by mail-io1-xd41.google.com with SMTP id v18so45522877iol.2
 for <linux-riscv@lists.infradead.org>; Sat, 04 Jan 2020 22:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=Vu/BIPQbyqubOJuLGv4uKPQrPxznt9X7LWYfO/wIAnA=;
 b=fjETWpe1qX+g0/b1/eDWfsSD96vubX6xO/gqryKmT925eFdQ716DPguv35Tw96K8pT
 nWa9ErHiDYq1+AEKdNiydKQAQ57L8wv5eticDWHBQOTPEVgEQSb/YhqiCpyjWHe4ACX8
 kPE9MT5T+nimkRzrWrhkQ84eVguvTsNhkrQfQGNMjPj6s2uj7eEPpgSRCwAqmzmp1R/C
 ic/3CdRNBZ5ASoGWtabWzAm95pGVMV5eOCc6VEc/Q6/Jdhm+PYkZPQoeczm+PYgLsfmw
 eEPLE0KmXdMFYYzPhkVd0pBkTfzoRiJ/NuTpS5sDoGGPH8OZ2ZCU+rs/DDUwAP4j/1g8
 +aVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=Vu/BIPQbyqubOJuLGv4uKPQrPxznt9X7LWYfO/wIAnA=;
 b=fHL7foSl37oWZSYtsa+yyN8y7LhcHbGiaxUA3IiI4upVG50Ms0eJoR5i1UQoFN/6l2
 Drg7QtPjtiE3/yy3j8TIJx41/uGgZYluRHa5fFvOs/7nSuWivQwqZpCMUOOz9NQf0BT7
 Ofp8Z1LS+I6yniTyCEux0oUrToyCNim2yNKBIqul+x/61ntA2zdmVBJI5lg63vkggfXr
 dQz4r+ilRxgeJUmUU1pIRYU1HXGQ7H2lHtZQ2pELU2wI2b9dm6kyy9Ae5oYFzO0gKeAf
 arPAMAoDi6/i8o89DpV6f4qBzYIwTkJdYTfI/F+y0Lu7O+9upCWPe3ENCxu88sIwZXhU
 ICGA==
X-Gm-Message-State: APjAAAV8uTDjXkXai4N8cUJMeiJ9tESUjOE5qHpHV61h9+WA8edKoOgR
 4TJuWJ22KHAtiq+PLROe/GMBtA==
X-Google-Smtp-Source: APXvYqxIBOGaSBg12yvBKwarm9Q3w9aL9cMpjLULTj3Hp4g+7r5n9gPa5UQgjwzWSMKfuLFmY0fV+g==
X-Received: by 2002:a6b:6f01:: with SMTP id k1mr65149377ioc.28.1578204257948; 
 Sat, 04 Jan 2020 22:04:17 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id w16sm22830683ilq.5.2020.01.04.22.04.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 22:04:17 -0800 (PST)
Date: Sat, 4 Jan 2020 22:04:16 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.5-rc5
Message-ID: <alpine.DEB.2.21.9999.2001042202460.484919@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_220420_209269_48E71A87 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Linus,

The following changes since commit fd6988496e79a6a4bdb514a4655d2920209eb85d:

  Linux 5.5-rc4 (2019-12-29 15:29:16 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc5

for you to fetch changes up to 0e194d9da198936fe4fb4c1e031de0f7791c09b8:

  Documentation: riscv: add patch acceptance guidelines (2020-01-04 21:49:01 -0800)

----------------------------------------------------------------
RISC-V updates for v5.5-rc5

Several fixes for RISC-V:

- Fix function graph trace support

- Prefix the CSR IRQ_* macro names with "RV_", to avoid collisions
  with macros elsewhere in the Linux kernel tree named "IRQ_TIMER"

- Use __pa_symbol() when computing the physical address of a kernel
  symbol, rather than __pa()

- Mark the RISC-V port as supporting GCOV

One DT addition:

- Describe the L2 cache controller in the FU540 DT file

One documentation update:

- Add patch acceptance guideline documentation

----------------------------------------------------------------
Paul Walmsley (2):
      riscv: prefix IRQ_ macro names with an RV_ namespace
      Documentation: riscv: add patch acceptance guidelines

Yash Shah (1):
      riscv: dts: Add DT support for SiFive L2 cache controller

Zong Li (4):
      riscv: mm: use __pa_symbol for kernel symbols
      riscv: gcov: enable gcov for RISC-V
      riscv: ftrace: correct the condition logic in function graph tracer
      clocksource: riscv: add notrace to riscv_sched_clock

 .../debug/gcov-profile-all/arch-support.txt        |  2 +-
 Documentation/process/index.rst                    |  1 +
 Documentation/riscv/index.rst                      |  1 +
 Documentation/riscv/patch-acceptance.rst           | 35 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 arch/riscv/Kconfig                                 |  1 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi         | 15 ++++++++++
 arch/riscv/include/asm/csr.h                       | 18 +++++------
 arch/riscv/kernel/ftrace.c                         |  2 +-
 arch/riscv/kernel/irq.c                            |  6 ++--
 arch/riscv/mm/init.c                               | 12 ++++----
 drivers/clocksource/timer-riscv.c                  |  2 +-
 drivers/irqchip/irq-sifive-plic.c                  |  2 +-
 13 files changed, 76 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/riscv/patch-acceptance.rst

Kernel object size difference:
   text	   data	    bss	    dec	    hex	filename
6896189	2329828	 313920	9539937	 919161	vmlinux.rv64.orig
6896191	2329892	 313920	9540003	 9191a3	vmlinux.rv64.patched
6656496	1939040	 257576	8853112	 871678	vmlinux.rv32.orig
6656498	1939040	 257576	8853114	 87167a	vmlinux.rv32.patched
1171674	 353368	 130024	1655066	 19411a	vmlinux.nommu_virt.orig
1171674	 353368	 130024	1655066	 19411a	vmlinux.nommu_virt.patched


