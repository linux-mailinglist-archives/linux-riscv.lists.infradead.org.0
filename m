Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAD298CC2
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 09:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGkbh8PCmeedwQ/wWkVuOCISIsjJoNaUF/xlEA0bC5s=; b=iVowL6j1WZiUng
	Nd2RN5o0g+zjVv3PmfuBfRJqvxxLn6l13BpTrtRAfu3KWDEAtxAEAgIWYa3QbwwOD87sjZj3+Pf77
	/8DT4Nl5UU8VAHJ3rB/Sy/I+z9aErhgU39WCcEpyKBIw74F7m3qropEr7QjyWz5nYneaYqTBPwLjY
	GUycxYsd6/1K/f5Abn29sQcV4vjMAzedKQ2nkS5NrXIFBVrThULShfykyoP1R4Vo7z1UcgGoYwKnm
	uW1Bpf3T5NkF2I6CBXzEgSlQhbX3CF/ER3MXXC/zscjdRkAgv8+6OE0Hr8k9+f5yDxzCp7gri6K4d
	2PU2Zi3kJPqQYFRMiBag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hzy-0000Nl-LW; Thu, 22 Aug 2019 07:59:10 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hzq-0000Kp-Qc
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 07:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566460785; x=1597996785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j1ObqNXDvM0ZAwJARyDgXPV48mXMzUSdIC2C+2BkImY=;
 b=RKtEOUhHHvbP5mDk7Huy1gLTUa3NcVii1+0YuOV3XzA61mLv3qcTiWie
 BnZ36YsiN+xIdYpbypg61BBA/VmQ5VD4XbMHEfatgJFJQuHo8SM84b07E
 NezrFs/U55HuFsmmx3JfjAA1NzcVoUYEcKHO7PshrnR6GJ/Jn0h8X8WXV
 L9nmy61e5xxDzFySN5mV0Tm4+b3gHe7OsRAFljvirbpD75RQfVNbXslmK
 J3DBGNx2dAgpNiazxjdpE7aYoLfOCpYYV4d6rURDqy8xROn/N/c1luBTU
 KyUZeM9AK7Wan3jcT7hCKyzWgeNh6sxbFFbqs49HQHCOVzhNLepApK+pd g==;
IronPort-SDR: jMWlZJhz22ZWZ8c5cK3EtXXiAJKataanoqPnZN3iN8rnsUsUX7MyjUOX82SsgFcP35pHD+CYs0
 4wdBUY1Qh9CG6/4sBprUi/QfD5QgF9bpEFz3L1sQdi5anWKfd8oPvtvhKJ9bIjdYbCuGf2YiYO
 Y81QcP4tHvfSCJtP3eeKs4Ao1+X2m3MtwrWDBEDR0ZQ9Hedpf/DYdpUwUPZG6z8XkERHa/Ipp2
 bO8yCp68f489CX9+sESEkgGAUs+KEikpd373gjUTDmL/DsNDnx/ZZv3iPRCxyi1jWmnPwkTTPq
 C14=
X-IronPort-AV: E=Sophos;i="5.64,415,1559491200"; d="scan'208";a="216831487"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 15:59:39 +0800
IronPort-SDR: ZNwCW51OhTMlLXkFnW7tvPJl9KG0O7QvjjyoAEuJtxT/aGGbVGKy7DLhEY6B/BG5Mh/CG0DjlD
 78uLdckQTy3Qnad486xp9BSCWp3Oc7jOPwbJtggf1rK2xwE0DSM3h0gmeFjDulh16f43GxFwUQ
 ax/cX8nthA6lYKMlnoSc2Tj92o4RkWmU8uhJ9+lBZzDjdTvOpyi7GPzQtEyBQfFNMEuJZOrYmh
 lmWVz0Mpr0oZNGJMlJPjSpoHxM5cvmyufIp0xoqpHYHEZrkSxdZ1y66TG+ys2H1O19NrZ9fJk+
 fFfANAiJOWOrhCsPZqZAGwsl
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 00:56:18 -0700
IronPort-SDR: LMuHXB3z06ZWti+mKQI/IsLz8aTtCS18D19F4tFR9Hrk6jSZb6zcimTZHv+wNvksstATECV2qP
 73q5WejYVS1IPw7eHpwmJtow4z6SFnGiXATYL9CsI3PWZhNNgQBbi18SRs5cQzOrk9rcStHT1D
 XizVxDssMCr3aoDxRre3qw11iWCVVz2nQUJ2kTVcvJOGKJkiH99h06ONnxBUaIFUBVmIu+1i1R
 eGdJNPvoccxtLCS4DMyC2Uh1uWdhlJWF5r1znhYcGTMNtzJv8lxszy3a0XZVCPQS/qt/NvGtsm
 WSE=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 22 Aug 2019 00:58:58 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] RISC-V: Do not invoke SBI call if cpumask is empty
Date: Thu, 22 Aug 2019 00:51:49 -0700
Message-Id: <20190822075151.24838-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822075151.24838-1-atish.patra@wdc.com>
References: <20190822075151.24838-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_005902_902267_03007172 
X-CRM114-Status: UNSURE (   9.17  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SBI calls are expensive. If cpumask is empty, there is no need to
trap via SBI as no remote tlb flushing is required.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/mm/tlbflush.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
index df93b26f1b9d..1293b8017ee0 100644
--- a/arch/riscv/mm/tlbflush.c
+++ b/arch/riscv/mm/tlbflush.c
@@ -14,6 +14,9 @@ static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
 {
 	struct cpumask hmask;
 
+	if (cpumask_empty(cmask))
+		return;
+
 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
 	sbi_remote_sfence_vma(hmask.bits, start, size);
 }
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
