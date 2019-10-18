Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D39DBF74
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 10:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dpw23r7DPxDCBr9ciodD0bYKPTE0ak88ea2+IQr/KMA=; b=b/0UZHws5KlrJy
	O1YHhcKc1/ARJ3UokrYw2mGEUDWPFtW2wB0nqmK9Ac68q18b7QQAJCPA0vwXOMIFf7pZCKQ5+S3Oz
	HyPFoAjRFs9YMormsORk/5t2k6Nlk65xCvkElQRWnUUSVC4eu2QSb3/pdmkrHn6IWiSLwD3Nl/LIV
	2D+fj3ba53mfWHeYTuCKZSVbbQCZulkDf/2PlIY3tB7mNlEOwHtBrhYsj8LtHAe+wvtQA8VBPXxk/
	CZrnxXfYBzTWhvls37iubDuwgYq0+xxBChbbazlHRIMsTTLq6u1keTcGaL+m15vvehmryttJHcP+Z
	TR776j2gRo32Ts0a0qfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNJe-0007gO-92; Fri, 18 Oct 2019 08:08:54 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNJb-0007fV-0x
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 08:08:52 +0000
Received: by mail-io1-xd44.google.com with SMTP id t18so2274060iog.2
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 01:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OsOgYMSsyTjbkroAj3oOC8H18OvB8iGYAKFSlXx+BSY=;
 b=H+ZDs2XYdH0O56HX3VDXwCQVFh++q5NGu+haqRDwCYKEITTaHB8d4gMRkeoXIC7eJR
 hPkFtA7PA/lYUOO+uW/cm6Yhd+JCwdI4k8zip2AkFKOZCJbupK2V2DlIlzPsx93h3Vlp
 9srOuJ/tZx9Kr/K/k2aNXTxcy8oxiyKZD94TkzftcCLzffOo4CD4kehQPRBpknijaiKY
 rWDp0/O/p2N/5GiCXhxiKja78a3EMuypOdTwt2Dr3at0jZU+hjJ8sZ+NoF8HAnhujla5
 H55cVpgB2Di9NHoHPKj2rbGh37oBagcQZSglTzl3W+Exw7kBuTVqupoCCGkjhb82EpIf
 j8PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OsOgYMSsyTjbkroAj3oOC8H18OvB8iGYAKFSlXx+BSY=;
 b=fDU7UWkQXlNKMtVfhWrItdAuxNauaNlXjt6h/zav5JndGkssz5Gcir0ObduIB4SxRh
 +kyoO7KIVv+lqAytQohPFBAKDneAljxCCFT4FoW4oFNegKEI2GqnWbu44MCtR/LItxxC
 acjZ5EJRc8NfvWzPK8l3BBI63+mVZ7zc9Av6ZD3ObjIUtJxDnv43eAARfyfbqIt6UHs2
 fqaorE3nskDOWJ0HjQ91xhHtiAWtBwaFXWlzeAMqa8dWzmcdtvIskH6Y/2ro40ATe7X4
 kRka4GcMpkOfwODBYD3yiv9GAVMIemXb4J92aPKBMqm+BdaiWThqh9ekmrWHE0to0GVp
 mQ4Q==
X-Gm-Message-State: APjAAAVyzxMbmbMYTui6yriK6ozrm97vTwcEI8DcZy+Aw4ePJPikCV2O
 YfqpZLpVgABBEDD/C+Yr7ml0YHwdLBo=
X-Google-Smtp-Source: APXvYqyjWXiLACNA3jdhTpVfFb8nQ3bXXxtGvxNttTT/x6HmX+quBkUlt6blvv678FE4MDtZIT7NOA==
X-Received: by 2002:a6b:5404:: with SMTP id i4mr7524183iob.204.1571386129901; 
 Fri, 18 Oct 2019 01:08:49 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z86sm2121026ilf.73.2019.10.18.01.08.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 01:08:49 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/8] riscv: resolve most warnings from sparse
Date: Fri, 18 Oct 2019 01:08:33 -0700
Message-Id: <20191018080841.26712-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_010851_093551_714624B8 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

This third version drops the patch that adds one of the
__riscv_cmodel* preprocessor definitions, and uses __visible for C
functions called only by assembly code - both based on some guidance
from Luc Van Oostenryck.

This patch series incorporates some changes based on feedback from
Christoph Hellwig <hch@lst.de> and Luc Van Oostenryck
<luc.vanoostenryck@gmail.com>.

Applies on the current riscv fixes branch that is based on v5.4-rc3.

- Paul


Paul Walmsley (8):
  riscv: add prototypes for assembly language functions from entry.S
  riscv: add prototypes for assembly language functions from head.S
  riscv: init: merge split string literals in preprocessor directive
  riscv: add missing prototypes
  riscv: mark some code and data as file-static
  riscv: add missing header file includes
  riscv: fp: add missing __user pointer annotations
  riscv: for C functions called only from assembly, mark with __visible

Kernel object size difference:
  text	   data	    bss	    dec	    hex	filename
6664246	2136664	 312608	9113518	 8b0fae	vmlinux.rv64.orig
6664178	2136632	 312608	9113418	 8b0f4a	vmlinux.rv64.patched
6444536	1797560	 255184	8497280	 81a880	vmlinux.rv32.orig
6444492	1797536	 255184	8497212	 81a83c	vmlinux.rv32.patched

 arch/riscv/include/asm/irq.h        |  6 ++++++
 arch/riscv/include/asm/pgtable.h    |  2 ++
 arch/riscv/include/asm/processor.h  |  4 ++++
 arch/riscv/include/asm/ptrace.h     |  2 ++
 arch/riscv/include/asm/smp.h        |  2 ++
 arch/riscv/include/asm/switch_to.h  |  1 +
 arch/riscv/kernel/cpufeature.c      |  1 +
 arch/riscv/kernel/entry.h           | 29 +++++++++++++++++++++++++++++
 arch/riscv/kernel/head.h            | 21 +++++++++++++++++++++
 arch/riscv/kernel/module-sections.c |  1 +
 arch/riscv/kernel/process.c         |  2 ++
 arch/riscv/kernel/ptrace.c          |  4 ++--
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
 26 files changed, 109 insertions(+), 15 deletions(-)
 create mode 100644 arch/riscv/kernel/entry.h
 create mode 100644 arch/riscv/kernel/head.h

-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
