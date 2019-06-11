Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DCF3C8E4
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 12:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8DJ6spBAZYpx94egNDqulqWZ/XMf9b5TqJze32g4fRs=; b=tpUbaLjYUKxS8r
	VRK0jBFi0cHDz9jTJd3m6MRsjaH1a7iGa1jB46V2FUISDoq1CrbNX3ZVdUUVSITsS2amHcXv49auG
	u90yMZIzxGSK+sSHxeuuyn4q+T3ExIGKBg7eLdTfWrTpQNsQKk+AxBsqXNjy9YGnlxVH0xNLqVNZJ
	Djid8whR1N+XS3/Z9hOtBwAK/TK8yRPpDqAY7AlJkitPejGL6ZAHExEj+bJxMZPo1ToPlZLSQwaZx
	H8cNSENyUxwpU9O8XfW7KWpAFg+gBubjK6Kapu4mPzB/Zsh7X471Qegz9kDUzVAyLrmn4xDWRdEKc
	vUJwzhE9o7cutxM83lDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadz6-0005GG-7D; Tue, 11 Jun 2019 10:26:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadxH-0002MU-2n
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 10:24:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AA36EAD55;
 Tue, 11 Jun 2019 10:24:32 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: export flush_icache_all
X-Yow: I'm mentally OVERDRAWN!  What's that SIGNPOST up ahead?
 Where's ROD STERLING when you really need him?
Date: Tue, 11 Jun 2019 12:24:32 +0200
Message-ID: <mvm7e9spggv.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_032439_291701_596F1D08 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Christoph Hellwig <hch@lst.de>,
 Gary Guo <gary@garyguo.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Before 58de77545e53 ("riscv: move flush_icache_{all,mm} to cacheflush.c"),
flush_icache_all was a macro, but it is used by a module:

  ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!

Signed-off-by: Andreas Schwab <schwab@suse.de>
---
 arch/riscv/mm/cacheflush.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 9ebcff8ba263..4a2e5bf8b21a 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -14,6 +14,7 @@ void flush_icache_all(void)
 {
 	sbi_remote_fence_i(NULL);
 }
+EXPORT_SYMBOL(flush_icache_all);
 
 /*
  * Performs an icache flush for the given MM context.  RISC-V has no direct
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
