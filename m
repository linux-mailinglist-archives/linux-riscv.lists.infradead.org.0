Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291C698CC1
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 09:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SRGRIm3DM9j+nWSSnYFh0QLwG8VpnCpLKzBhTu9NkHI=; b=tQ35SGUH1Dzz2j
	+BcKtvEVPUlwMHw0dSiQV0ufAnA7qjbWTsmWwECvbL6Dgur59ZuxHtO67uU+Zfu8ya8QsjmJWOkM5
	63nkS+TtWJykqBd1A87BebBVBzRMO2cNIHFHv9SBM6Enj8a8loCFN2Zu2mUoO72KTYw6WQ7wLdCG0
	2a4T51oKBOYRLBPH9dQyl4gacllGIcGkyYFFaEA1lM4V4kbsnQEfKDg/lP9rEKszCID93Xs/tKFK+
	7kkwqtZAhmrPoysfepDtXmmt0cvOmRlnjOx5CQ5YA19bmbYfnONzA3wCzcO73SFYmB8/ferxA4F6X
	IT2JjCWKnldpJSwgofbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hzu-0000MM-P5; Thu, 22 Aug 2019 07:59:06 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hzp-0000Kp-4o
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 07:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566460782; x=1597996782;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QcWeubIkfrNRIenwwrXmwbneuUHMuNrk72My33ahgcU=;
 b=kP+zZY4VrDlGqy5bdKclGvpT+ZSwVV5mDChp1K8UyNj4Zy8INgLKQFcN
 gn1nBVZZomCCzlRY1VkuLUqi2CoQcL4U/T54chOL2eTRV6cM48kkttx9/
 VXj/KJ0gSpb3XBo07LipXolM/umewSxfP8OOcsIEC2OVTRdOniKhXXjkP
 icJUqSbD5f5Wd/zd96SJIVn4TGzlgLpJcbUHwjlLZO4at+6CnYzuGt68+
 9IT/BeO4lXhNRDn+H2m9A2zZCfW+rk3DxSRX0NFflQT3psQxTEUpUEWxG
 zajoA2Nk+if9Pw+tmz/LAh5lebFXrxYNrj5R/2KCdp/3lkpsDhkXioHEK w==;
IronPort-SDR: aqCSjxcyxcsX4Z+d9BUHb+q+Sf/4AEWUQta6kN8W5lUAHFf6u8gxLo3IzwnmHs0MAcuqHgDXK3
 L69FMLmbm4ZPFzSbdskKCEo+7LKhUkhcwGs2nbaaaYJcjZFj4YurrBOW9NTvM58jVsPPIIQ5xp
 SxIaLRlPAuZglWiRpVWY6aVfhvmwhS3HlBNeoSbw2PTb5ENVHa5Ia78j2AChtcZ45d0yXnoRU0
 lYzmqbNYEBZYkRqQZ5P+npXChYwWkZhyr6S9d2hfhCizpVGETkm8IJYZhbE1dTq6/UkZLc76mU
 lic=
X-IronPort-AV: E=Sophos;i="5.64,415,1559491200"; d="scan'208";a="216831486"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 15:59:38 +0800
IronPort-SDR: a27RmTgviVtxMSowTAxKw1F9uP1G0gcuQF1uvU1yLz9u1ovZqLLhIvrj7KOQ0cpo3BtXEfGEEj
 mqwdRiktzhGwLv1AMWngSNpJsMMuQX9zENQZGxs8k2uUT/Lbdhy8y32oZROzvV2EphxdLcUzJi
 CWvr5XPwDvpaoRBJj3kiGmAcl5NGmtQ6bF3nygsiVuwq1Z7LD3SlFhotLlK0/RNmZNLY1rZhrf
 o6pTBLd7Lq0kVgD/TG+l4mj8GidKCJtIBS0KuwDncRzGy3/X0ATjoU3/vlAVMhRxzxK6q/tlBL
 cNR6FL+XutMX15hSuFfp1vSb
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 00:56:18 -0700
IronPort-SDR: 5+z4id9bKYI3iBBh15JNRJHsyhAB1X1xxEPv8cc5V+2UHHTZm/FVENkLtf82Mh1hLQ9rozGuwf
 WuPlKEfi6xXbIvx8HuHh+8w8Oni43TrwC0fq8SfhxiP4rI/L9aWHGGvB1DBfRtoSx17Lro8crf
 8JaxCm7xlHsAShBFeWwVaiU3/ZxS4HtvbfmdGc8ZcOHlJQ7sC16TwVIZvnzZKLNkiRPe6MI5Kc
 kr+2z7C5MzuFZi3hq/vpFNQPkCjJzeznFqPF5xI9fi2CVjjqMkNkFIAh/P2f5dX4LqVSfKvgRd
 FKY=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 22 Aug 2019 00:58:58 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] Optimize tlbflush path
Date: Thu, 22 Aug 2019 00:51:48 -0700
Message-Id: <20190822075151.24838-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_005901_239803_EB866AE7 
X-CRM114-Status: UNSURE (   6.99  )
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

This series adds few optimizations to reduce the trap cost in the tlb
flush path. We should only make SBI calls to remote tlb flush only if
absolutely required. 

This series is based on Christoph's series:

http://lists.infradead.org/pipermail/linux-riscv/2019-August/006148.html

Changes from v3->v4
1. Simplify the local vs remote usecase.
2. Reorder the patches in the series.

Changes from v2->v3:
1. Split the patches into smaller one per optimization.

Atish Patra (3):
RISC-V: Do not invoke SBI call if cpumask is empty
RISC-V: Issue a local tlbflush if possible.
RISC-V: Issue a tlb page flush if possible

arch/riscv/mm/tlbflush.c | 25 +++++++++++++++++++++++--
1 file changed, 23 insertions(+), 2 deletions(-)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
