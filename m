Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD2A15A67C
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 11:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vhn8zHgWhVC4unY8zBC5MpiuYC64k4xPBfWqvyPzd2U=; b=ivYl/zPOjw4vbe
	awPw92aL+UGUldhK5rkQa+BKcj0B161e72J6mkPF5anV79HXA6aC8lmXVvXvfp+3rChTBFWbhgBvu
	e6diERSvbflcLrkZ57sA+6/mxTno/TUHCB17YgNbylmLPfOn+XKxo9jOtE+qm5/QGfPNGKIFzP+oh
	LkQE7j92AaejqAuLMKEL2C6crzU0S2DhI1rvVO3XZguF7u1ytMmXGd7l/KrLi3ub67kRXE7o3PN/I
	iXpWDHuN+w0T1zFppbRSDyioDwt6+0hvKfu7j9mQ+c891eJLvsofKxV7uvfzH8krUWVzLHRvjq6zq
	JRDujsIhlseMC8Pat5Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pM4-0002Tp-Nq; Wed, 12 Feb 2020 10:34:52 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pLq-0002L5-4r
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 10:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581503679; x=1613039679;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b/tIO4B5Oqs+AuZvVLPvZfx3DTjiwrDOhliJ8kKcfRI=;
 b=Jj3bsYR4u09xVvtMEvlzLpa/IhLc0+ZDI+OwuqvHAxDQ4A7eTpd7T9r+
 2UcEp2Ui7kfUqMAPPjXshvLfpxSWH8R5RmH8ohA+8lvxfrl3fss7nqOAO
 y6CJWO6r7FeRxo+hgwy+3YDRWwN2EjMSsKNTPS5w56nPa+n08tPqrOBra
 rrhQCiI46DkVaxLVjPs1/v/M9S2lYqO3As0SuQqIHVknZ1uQTJcvlM1xf
 YwS7UYte3osxorGoItGl3ziW2SP8M38ar2lk6xE2FIs58teH9hoRHy4l7
 LUaT973LPhbFw/XNYcPsKxBARJWfOKSQLpOO4s2vfgkpxMaPssyBzKEd5 A==;
IronPort-SDR: VXiVeF/KyDssoCsr8SGgQQXbkG6V7t+A60nUe7Ir54zWQZQ9WXnV1o/3pOiwbeKh44y1frs9V1
 TLuurfbBq06oj4ZxWiCAob9txJqP83P2JulduMiEgR+PP3K+iBj+ha+w3RDXS8WYHmR2M4ey7N
 3CEOJDpjtNp/vyAwW50qJqX1grAqWXx10ccfVW0Q67JcRvN0nbTxldeuJweT/7dVugnXEpG2id
 2ktIwBrz9hsxboUXBTFS9alAHBizzGUGam1JnH7pUkWovmezB/3c0f4yKmLn3wM6UYVNwVaOCp
 B9o=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="131113043"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 18:34:37 +0800
IronPort-SDR: lDfjh6UoZviYM33ukgN1GY1MIqb7t+gHk4qiLO9AT/5s/pbKLzhQcj4TxKqFL3lH1BVmmg90hg
 MFSssU/HpLsP6Rbn+H0Mxu97GvVBWFT/VJpXXWb04cpCp1GFWsfrv9K9oJSk6irZTLA+Hmff51
 Bx3Uip817kjUdHPFcLhg7mmhHdz+qnaSrPAu2CaCOZhFqLnH6AasUjTdWyN4dh1Z1TtXdBxpf1
 H+JnDoaJKx/8mNoB8YlddsInsuWsUx68nGddAZHlSrZgoxtl729dzMkFo5CzIO2g30a9uVeryl
 MubgRvPnfUVTumtLqppxtWLS
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:27:25 -0800
IronPort-SDR: L6Qxyrl7Z4oSm5b7rR9gEnCFz824MiMpH6r00SW4U9huPHF4e3w/NNFURsOtMGdWcM7kjDWnGr
 yy7M+yCWVrgnfPjYEg5VIFfY4JxEnBXX1+ruGiglWxh+4LoGgsc7H2Nr2pA0VW2NImL+rR02uX
 HMp4/t3eiE+Y5e9kVWTeIQ25ZOSU/WRv8OPN1j8oAg8eO+f2xBYweVr9fd/19er2nPBO/siiSx
 w/tg230jDWJPBRh1t3VOnvGSTtciYsQIdpPOBB+kkX1XoGwk2pB9qvxnmLDd1DK4yJ3ZtlCaMX
 VMs=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Feb 2020 02:34:34 -0800
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 02/10] riscv: Force flat memory model with no-mmu
Date: Wed, 12 Feb 2020 19:34:24 +0900
Message-Id: <20200212103432.660256-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023438_221878_8F695D8C 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Compilation errors trigger if ARCH_SPARSEMEM_ENABLE is enabled for
a nommu kernel. Since the sparsemem model does not make sense anyway
for the nommu case, do not allow selecting this option to always use
the flatmem model.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 73f029eae0cc..1a3b5a5276be 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -121,6 +121,7 @@ config ARCH_FLATMEM_ENABLE
 
 config ARCH_SPARSEMEM_ENABLE
 	def_bool y
+	depends on MMU
 	select SPARSEMEM_VMEMMAP_ENABLE
 
 config ARCH_SELECT_MEMORY_MODEL
-- 
2.24.1


