Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CFBEF318
	for <lists+linux-riscv@lfdr.de>; Tue,  5 Nov 2019 02:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+vejqr36A+5GoLIy6rsH+683RgjOrzCabSpkJHgjYjw=; b=pAS
	lc7HBRrKGyL2GHyAZT0/Y7pVBw+8PH8K2a34Ooure1A3NVxwunBXzfeoRpUb1zNcpZnbZIvRyAC/3
	R689AHRtP/2o2m0XfOm8v9BpwjuTQv48Cadzr/MzYN9JsmMjCLaCz/9jPF34/NhKMK9G/RMsh+7Ee
	0zdem8oQ05FK9z69Z90N2jZ4/iudJxPz0Z+VBlnZgWvg2XCVvBQggrh/Wn1zThhgCrIQJRnQC9wU3
	ZDtV7y4EsnRI5/AcxoT5JjLvC1Pv1Qk37rIXZCnyGgnclQFQitFzIpWlrxT6URlDnHKYse3k43P11
	PPXtytY/1KjLhTGExzZL+5N2HXnJ7aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRo7T-0001CI-OH; Tue, 05 Nov 2019 01:58:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRo7P-0001BP-Tf
 for linux-riscv@lists.infradead.org; Tue, 05 Nov 2019 01:58:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id s5so5695040pfh.9
 for <linux-riscv@lists.infradead.org>; Mon, 04 Nov 2019 17:58:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=yDR8sFGCxzSbjaGfi7fJTFdISWAnA8kL7phBjUnjsmc=;
 b=es4eEqoPagR8E/lry95E2F3gxz83tQk8Mzac/EeG6yQOAJIQfhnJo+hpDlzpy6AaVA
 n422XIto0oJRZyxuCuTLUlQ+bN+L4+tz85XHO9yNMoh6xaA0Tl0nVkTaIkAdjag4Xm/I
 9HBVRLHDDfGXXSd9d2yYw0Em0GA2HIpvMyKNUgYouwWwx6lxnZyBcQXM6Yex2POicfK0
 BRrbGet9w3HDhP/TQ5CWqaX5sl2UhYIbzL8IfQJeidDIqoCcTL+JeA8CUM2Z/ccoBwWd
 4MILq1p+IHi0T80tzyAilhv1wX6C+jlnmj3I+AFi6XMipIZ3UeLfeqAhzi0cMHjv69Rc
 nLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yDR8sFGCxzSbjaGfi7fJTFdISWAnA8kL7phBjUnjsmc=;
 b=Lm3MYt2uhT+aSzgfvWYqK+w2gB2M5URcX08RHw+OVRqIAQjkfJ67tF2qFvRsUfz5KZ
 bwSUDZzF6LjPWtDVKop89P3J53DhB7l6fEwhckyy3T3Y4m0Vvc6QgsTC/rbbSQDvcJNn
 DjTuXgpH4/73q84XbmjYyWqz+h8Wwb6sPGJE+1LW5kGmpfehCjcxbJpduZVIGv9arP0n
 B5n1ayRIFc/zdoNjjF98owC01cGQ51yU8VmVC5nYIxikXI2oiBqbBxn/het4HqG+L8GV
 qc1uN0Nj5zoUgxDTfGEhoggQkJ4Hd3C5mgkk76+icJfn7f1jIJRdK8AAjYGy8OHWvu8k
 Xwpw==
X-Gm-Message-State: APjAAAUaSlPwSiSbvYAh626t/JX+kXx3mUZCNQpIOSKXCoVKY8jZml8h
 WHOy++siS87Z7VjVeSleyp7nvw==
X-Google-Smtp-Source: APXvYqxY0gl45ufDEtzxOuUDKjdr/YfO4k2ic/wiDE5ZXmwujUNVBcIIGaBSr53zAPGnILDB/9E05w==
X-Received: by 2002:a17:90a:b88f:: with SMTP id
 o15mr3041825pjr.5.1572919130944; 
 Mon, 04 Nov 2019 17:58:50 -0800 (PST)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id j6sm16484444pfa.124.2019.11.04.17.58.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 04 Nov 2019 17:58:50 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	mathieu.desnoyers@efficios.com
Subject: [PATCH 0/3] riscv: add support for restartable sequence 
Date: Tue,  5 Nov 2019 09:58:31 +0800
Message-Id: <1572919114-3886-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_175851_968200_ECA0CFED 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 linux-kselftest@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add RSEQ, restartable sequence, support and related selftest to RISCV.
The Kconfig option HAVE_REGS_AND_STACK_ACCESS_API is also required by
RSEQ because RSEQ will modify the content of pt_regs.sepc through
instruction_pointer_set() during the fixup procedure. In order to select
the config HAVE_REGS_AND_STACK_ACCESS_API, the missing APIs for accessing
pt_regs are also added in this patch set.
  
The relevant RSEQ tests in kselftest require the Binutils patch "RISC-V:
Fix linker problems with TLS copy relocs" to avoid placing
PREINIT_ARRAY and TLS variable of librseq.so at the same address.
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=3e7bd7f24146f162565edf878840449f36a8d974
A segmental fault will happen if the Binutils misses this patch.



Vincent Chen (3):
  riscv: add required functions to enable HAVE_REGS_AND_STACK_ACCESS_API
  riscv: Add support for restartable sequence
  rseq/selftests: Add support for riscv

 arch/riscv/Kconfig                        |   2 +
 arch/riscv/include/asm/ptrace.h           |  29 +-
 arch/riscv/kernel/entry.S                 |   4 +
 arch/riscv/kernel/ptrace.c                |  99 +++++
 arch/riscv/kernel/signal.c                |   3 +
 tools/testing/selftests/rseq/param_test.c |  23 ++
 tools/testing/selftests/rseq/rseq-riscv.h | 622 ++++++++++++++++++++++++++++++
 tools/testing/selftests/rseq/rseq.h       |   2 +
 8 files changed, 783 insertions(+), 1 deletion(-)
 create mode 100644 tools/testing/selftests/rseq/rseq-riscv.h

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
