Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96303988AC
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 02:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sqNlzt35bLBaIppTLyF/clewt0Mzax1ICEoMIUvDpY=; b=GjP8u9rk6WobB3
	csbWryqW7hcV6S1c4JmypV6O1gROk3AWhiL9YHpLDO5cbR8EfKlQGmJYh3VPEhoFlhEIiTUNfclBr
	SVMo38P/Z1nEmM4Mt6T0wCdve13uyGc65DaHB+0pmrQUGvp4i9094tY7ZZLEpTVSg3MdMflU+FFfy
	W7oEB8cftrnWv9ndFKzmTmcM/a0aeNOWeoleBFXXada2Le0A8TqV1WoUWhHxNNS/Z7ZMfXFh/CGfa
	J0NA/Vvoo37QZDaHAz0EjJOv2LpXnL+GmDmcpi7zPpw9Zwar1TWF1tpR68XGz5n5T28Ytd6YIGz19
	4ZiCRi+3y6RX80PtrSFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bFe-0002s4-D5; Thu, 22 Aug 2019 00:46:54 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bFY-0002mk-N7
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 00:46:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566434810; x=1597970810;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W6jivi39Nx039cqiIEt94ExvK22lP+LKK4igKnFn5wc=;
 b=aPl61jNAgwlM61F5CLBCxptGVZwOzg1M8VcsvQzgrMuy6ltEdZiGPDPZ
 WBMluZ+81Z87mP3E73EoC5bbhu82KRsPpsKSlcrLz33J0HB6GKvkWt+oi
 G4Gxw7U7XGdgQOvPcmzKC6n0ZKv1acom+wEWe7UTXe5FB09WOF35VuoI/
 SiIJrUi2VWTIs+vdkZAoDgxnl6nVldpcZW+NrGsJ31AURuhTnUKuiSQ+D
 iUvxJfkZU+vPjqIbqAdmNVEhkr9POzhsrRNFAZkRR5Eqt1Dyd6iTIart7
 KeeWLqh0Jb1E9qdCMY20ayoKfCQBJ8N3+qISJrh1JrDYACyaJIQorEpbG Q==;
IronPort-SDR: qjjLnS9hmWN3CtuhkpaNM+t8LrrVBXn2MgYOnvwBdT9syByEUYSqyAA1LbOR9KfsWiIJGnf81H
 eubp8LDGgIMMVkzJxjwGzESaUNMUeD4fJe/t2ylSb60sgt7U2WxI959gHj2WoBT5oykV6EFCgz
 7Tpxm9HVw6qbt/AP3axEoz2pY94KEJOhFBpA4OoeMaRQGFQq7lmwB9oy43RCuBxcfoFwVdoD4Z
 2ElWPMR1TU3lZQkVkHVIfAXkoVA8+/D09Nq9lZ8ejDGsk4XJPtljbTiSKVXE8EbRC5qygaX2NG
 M1Y=
X-IronPort-AV: E=Sophos;i="5.64,414,1559491200"; d="scan'208";a="216804438"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 08:48:31 +0800
IronPort-SDR: t+iyGuTTlJnDBZDO07Q+9mf/oEL2ZFGniZLqph0cVxs8TOE7u11CQy+N1Kb7ekp2Xu6qnBOGL9
 13WIcjrtgXmG33q1o73ItLcepB9DEcM/+IuGNwEJ/EWZUyqJeL9AqM9sN17QLqLajoJNOWbc24
 HVp4ydArv4UcRRJMTy2Cyx/BN1xLRI6ZWPgZk/ka/IFfJny+8SGFEtwsFrmuxeWVkTHLfZYYlM
 9w4xMX4eV3GkIEYOfzt3bdGnh2pvZD0HieLkY3miXiLLU6937jLXhW5jFFJd/iW4dy6mSMnbq5
 PdBPISkeS+un2TtCv9AGL1D6
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 17:44:04 -0700
IronPort-SDR: cVtLZ2bkSPG6/f67KCiLItzr/tkJQvkc5WnwGvduyhf1QuHxsbx7ec8YojBDcB+TvWk57DK93Z
 YDKy17AIdmh7T7HqVfWEpu34UmuExjX1h0YysJFGsilQ4UQkAGYkK3Pd3JaO+R42zhJIqBzs4I
 1dAqzD4V3jJc4p4kL8aIpkivWY66U40WuRDKtsqsIIBU3UJwILOlKEH6cLsJdSXe4PQwTUlh8S
 8t8WAXbzl67bsf86U2q0snyCz7x2Q5wil+HI0YktaWKZFO3tBGMbLdQ0dmoElKjMCxZfffojVJ
 TFs=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 21 Aug 2019 17:46:46 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] RISC-V: Issue a tlb page flush if possible
Date: Wed, 21 Aug 2019 17:46:43 -0700
Message-Id: <20190822004644.25829-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822004644.25829-1-atish.patra@wdc.com>
References: <20190822004644.25829-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174648_787586_62AB8A78 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Atish Patra <atish.patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Andreas Schwab <schwab@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

If tlbflush request is for page only, there is no need to do a
complete local tlb shootdown.

Just do a local tlb flush for the given address.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/mm/tlbflush.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
index 36430ee3bed9..9f58b3790baa 100644
--- a/arch/riscv/mm/tlbflush.c
+++ b/arch/riscv/mm/tlbflush.c
@@ -22,7 +22,10 @@ static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
 	}
 
 	if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) == 1) {
-		local_flush_tlb_all();
+		if (size <= PAGE_SIZE && size != -1)
+			local_flush_tlb_page(start);
+		else
+			local_flush_tlb_all();
 		goto done;
 	}
 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
