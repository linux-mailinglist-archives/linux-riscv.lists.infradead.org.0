Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72255DBB04
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 02:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oOQqKUYMY9kHq4GVeNmjDuzEKNxqphF35lcGOucNQEE=; b=HSfPcE5N1YvdJi
	ZnKkpdEmyc1crG4zu2BpIUWJ3erQ4qVILONzbeJmu9VvCXM2USUvsEke4HleSzrY/z98op9ifqG45
	jRIrCPqg1UcshXJ9kBOQSWoy3PCtpoP4aO6Ts/IK/So9nqOjKJiYnOcI0QiB2ojfxHQcXJRaWwiiw
	xSYQA8aD2nHtYGgLfLOueReQz7NSd3jSvvdEvTkF63Rf72rlPvXtkEia/LM0TNSBBYBC70pzZGW3r
	GGqq+K5GC+czzEqBUicI6Lj/5NzHHYwbUOTwvCmMkUKVglz/vfitTDVnsGPZ47GHOYlkkOxYBwpn1
	Mqa+CZPOai4PQnjR3K1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGSl-0002ur-OX; Fri, 18 Oct 2019 00:49:51 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGSh-0002tu-NA
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 00:49:49 +0000
Received: by mail-il1-x142.google.com with SMTP id a5so3941063ilh.6
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 17:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jFfZXZiKtRiLwkH3KZouo9ewXcERlfI4Qt0T9yHG1+Y=;
 b=GYOLJ/hGsqg9L3+YH0VojwgZ7sJyAI9IvNkUYkqm6vEr18NHeVtIC9WtuUVPWo89lN
 qpd9aqBAqBhN233DhZ+UUlG4OV7cCA05fb3AZQiE7KXgQdQyjlg311F4avHOGlcHh6gU
 vCRxfTR1WZCHhIkSDL4zD56KWMQKrbY9JYXaOvx4rT96hnd0ImbqmNUKxpEnKgwSDGpY
 vzzYu8QQ7+KWP/J77A80k+nqodwhb5WVvdCM5o1DwFlNR39tW0yKiBhEXeNCOFl5/2kb
 0yaq6YiaRLKg0RjzRYueXp5yKqZulygbYoAwqISUpKMyAxhDnutwMMVSpHso7KwxZFi5
 BntQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jFfZXZiKtRiLwkH3KZouo9ewXcERlfI4Qt0T9yHG1+Y=;
 b=Klb0wUuGbd3ISU290ywNfIi3Acnv+fx9mzI7TY0c1E9Hv/fttEo+buLLSPj8SltGxO
 gmkka97uHhZXA8VxRNWAKVF7JdcvCbOYnW9bfwQjp41NN7BzW1pumbML1pZpu41qrkmr
 NaDBUwnN6yj55K0CQFSvPILuZcSWvhGmi9EDIez8zB5c87zyskL89TqHlbXftMN2Vyir
 2dQNbN2lJm9OrDTF/oh/AY8ZoP5z4tTf+vSXddSKBHh8l6id0EQ1JBhiTiboM1k4moGK
 Rt5FbhhIhMPyA0y8M4zaLv8xjTdTyZCNbamnAFQqyRppI5Fd6mlnWKNyfEI5Jcfj3C0T
 UGhA==
X-Gm-Message-State: APjAAAX6MjJ4UxDJicjg+Jm/GbMtlyG2wcbC86WVqJLE8Zim9BMetwml
 TFGKrloAAA9XBTd867dqbXeFf9mr5+U=
X-Google-Smtp-Source: APXvYqwyrG116vwg8myi/qv9m0/GlzNq94ku4zq8HETmqKe/a0qZ85AOPQzXEPT3HCudMAel6Z7Ayg==
X-Received: by 2002:a92:c60f:: with SMTP id p15mr7450539ilm.19.1571359785740; 
 Thu, 17 Oct 2019 17:49:45 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z20sm1493891iof.38.2019.10.17.17.49.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 17:49:45 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 0/8] riscv: resolve most warnings from sparse
Date: Thu, 17 Oct 2019 17:49:21 -0700
Message-Id: <20191018004929.3445-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_174947_815133_DD96A436 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Resolve most warnings from the 'sparse' static analysis tool for the
arch/riscv codebase.  This makes life easier for us as maintainers,
and makes it easier for developers to use static analysis tools on
their own changes.

This patch series incorporates some changes based on feedback from
Christoph Hellwig <hch@lst.de>.

Applies on the current riscv fixes branch that is based on v5.4-rc3.


- Paul


Paul Walmsley (8):
  riscv: add prototypes for assembly language functions from entry.S
  riscv: add prototypes for assembly language functions from head.S
  riscv: init: merge split string literals in preprocessor directive
  riscv: ensure RISC-V C model definitions are passed to static
    analyzers
  riscv: add missing prototypes
  riscv: mark some code and data as file-static
  riscv: add missing header file includes
  riscv: fp: add missing __user pointer annotations

Kernel object size difference:
   text	   data     bss	    dec	    hex	filename
6664206 2136568  312608 9113382  8b0f26	vmlinux.orig
6664186 2136552	 312608 9113346  8b0f02	vmlinux.patched

 arch/riscv/Makefile                 |  2 ++
 arch/riscv/include/asm/irq.h        |  6 ++++++
 arch/riscv/include/asm/pgtable.h    |  2 ++
 arch/riscv/include/asm/processor.h  |  4 ++++
 arch/riscv/include/asm/ptrace.h     |  4 ++++
 arch/riscv/include/asm/smp.h        |  2 ++
 arch/riscv/include/asm/switch_to.h  |  1 +
 arch/riscv/kernel/cpufeature.c      |  1 +
 arch/riscv/kernel/entry.h           | 29 +++++++++++++++++++++++++++++
 arch/riscv/kernel/head.h            | 21 +++++++++++++++++++++
 arch/riscv/kernel/module-sections.c |  1 +
 arch/riscv/kernel/process.c         |  2 ++
 arch/riscv/kernel/reset.c           |  1 +
 arch/riscv/kernel/setup.c           |  2 ++
 arch/riscv/kernel/signal.c          |  6 ++++--
 arch/riscv/kernel/smp.c             |  2 ++
 arch/riscv/kernel/smpboot.c         |  3 +++
 arch/riscv/kernel/stacktrace.c      |  6 ++++--
 arch/riscv/kernel/syscall_table.c   |  1 +
 arch/riscv/kernel/time.c            |  1 +
 arch/riscv/kernel/traps.c           |  2 ++
 arch/riscv/kernel/vdso.c            |  3 ++-
 arch/riscv/mm/context.c             |  1 +
 arch/riscv/mm/fault.c               |  2 ++
 arch/riscv/mm/init.c                | 17 ++++++++++-------
 arch/riscv/mm/sifive_l2_cache.c     |  2 +-
 26 files changed, 111 insertions(+), 13 deletions(-)
 create mode 100644 arch/riscv/kernel/entry.h
 create mode 100644 arch/riscv/kernel/head.h

-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
