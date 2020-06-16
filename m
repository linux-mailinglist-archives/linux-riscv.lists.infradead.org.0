Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F391FB89D
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 17:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M7NTWP0IL85Rhf0wQSKAtn6JA+2MQEl/ZhdnoNmHI0U=; b=CnCwaAarvhGwwkJdPXhW5FzctT
	DOcW1bPh5E4Onwbrl9u9JgzCNnNK2UsUndUVqTz9HHn+GPNFTCCU2erjn/fS4QALcmSyR5xrhQJZX
	RAnTQVPRBPJ2G6yypS/LFXpeQ4GrI1Cv5pP5ALxgzuLxJ678bF1S+7qirbevjND7NC1ifuw+EVvhf
	WmFBI8VIYgUDrX9r3pVM/mJess2qAOWETR/I+gEZJ9WDDSyDM3N/yVkVEgrR8X9mXmu5dio1tbLM9
	3LPX2E/i9AcK58nmdAKI0TvrBtodg7/SARVEQb3My43bTIi9PCh+MLaOt218DVlUeqH9RsCwvYHg2
	MtPMyoog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDyu-0003SQ-0G; Tue, 16 Jun 2020 15:58:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDyP-00034v-4t
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 15:58:15 +0000
Received: from localhost.localdomain (unknown [42.120.72.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9ADA21548;
 Tue, 16 Jun 2020 15:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592323084;
 bh=L7HAS4sYz0Q0M+EaHokWTKwpor0s3bgHozek18pK5LY=;
 h=From:To:Cc:Subject:Date:From;
 b=AuOpr7G3+Fh9kTygW02K/pdHhG0lP5NrT3swgnodY5YTjhLi6ow3Y1S3k66sWESZ/
 RP1goGarTA+IuSP+K765jpDunyR1Ns6xKyskcRjY5NEQqnRznAxXKesdm0b01twqRG
 EseNQ8zymopKcK248UAlBjPE8fpWH14y3pKaQ334=
From: guoren@kernel.org
To: palmerdabbelt@google.com, paul.walmsley@sifive.com, anup@brainfault.org,
 zong.li@sifive.com, aou@eecs.berkeley.edu, tglx@linutronix.de,
 tycho@tycho.ws, nickhu@andestech.com
Subject: [PATCH 0/3] riscv: Enable LOCKDEP
Date: Tue, 16 Jun 2020 15:56:58 +0000
Message-Id: <1592323021-98541-1-git-send-email-guoren@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085805_260242_54FF21ED 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, Guo Ren <guoren@linux.alibaba.com>,
 linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

Lockdep is needed by proving the spinlocks and rwlocks. To suupport
it, we need fixup TRACE_IRQFLAGS_SUPPORT in kernel/entry.S. This
patch follow Documentation/irqflags-tracing.txt.

And there are 2 bugs block the lockdep implementation.

Guo Ren (2):
  riscv: Fixup static_obj() fail
  riscv: Enable LOCKDEP_SUPPORT & fixup TRACE_IRQFLAGS_SUPPORT

Zong Li (1):
  riscv: Fixup lockdep_assert_held with wrong param cpu_running

 arch/riscv/Kconfig              |  3 +++
 arch/riscv/kernel/entry.S       | 41 ++++++++++++++++++++++++++++++++++++++++-
 arch/riscv/kernel/smpboot.c     |  1 -
 arch/riscv/kernel/vmlinux.lds.S |  2 +-
 4 files changed, 44 insertions(+), 3 deletions(-)

-- 
2.7.4


