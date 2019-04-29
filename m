Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D9FEB33
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 21:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdIvlFzP+0IyvriZ0etoOJo7l2zL9apqb0hD4uGSj8U=; b=OXe+FH/PFcQhcS
	nIbofRSANn+XgqkyYQyh7g7ekMFSJ+KngXWUO8oReuUw0kTf5qQbd4MEOeIrXHG0B8VWWWY6xT1bN
	qhCBz8ggqgm3sg7muqh+UIf6IxGM/pUqgMsCP70cK3/oai1ILnRM5ZByqcZY1TobMQwlAd5sgrkb4
	wHjeCYe5om1dtid72qVumHRMUjP6gnyGuUr23OSayGOlm1g9N1wb+kJnQw6O1IgY8YvC7hoMTzQfa
	LLfgkDUOUjEMrGBHuMNIP5c+SYrYQWkO1g4gr9tg5KISWczZSW7UglaVTAWoo9ytQmubM4TAeNXRx
	woOzvYKdHKZ/10ZPo05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCPq-0003kS-IK; Mon, 29 Apr 2019 19:58:18 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCPl-0003f7-4v
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 19:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556567911; x=1588103911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=674EX0iIftC/tP47ciQ2WAq8p0Blf4MJzfJ6YEpD/54=;
 b=OIzZ0jTADC+c7jZh7Beuva0K7MaJCnctKoV+4Zo64dKUEU0c75s/FsQY
 2biJrIODccWW5coJKzRe1b/qhb2qXSE2WpPiEoxDanx2SnwdG5wHtrdtl
 fZBfLN5/Qha0akA9JGh5wItcT/7VHw6egIwatUZBoU6urOQoZ5YQ7BDIy
 u/ipwkWVl75Y+uNbKV9ndptn/ym77XsuBl3mRc7ipyKLO0ASOclsr378D
 oct5xqU/Ct5uIMomST8KjYjSXO/jaO26LgGzBQ/wPFayUN2bTZlhfB3eW
 UCFVpbwLjf9D8RRdhADvA22MH6iqTFVMLv5xDYQpAL0ksXxt2xD7Gq6S8 g==;
X-IronPort-AV: E=Sophos;i="5.60,410,1549900800"; d="scan'208";a="206289673"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 03:58:30 +0800
IronPort-SDR: rqlqaz/ORml4liPworRb1RjeBnbbop2HmWBMkCLTVRLUX2hPAHWPZGoTfA2jlJxOlTW+fwXrQ2
 fVsek5wUdOsMC1j0WCii0/R3O/IsNG85FvfBLPxqKYjC86v7FWocDEAifeLyDEkFhf1lSM+vOW
 cVQ0rmp+8maRoWSPAyT20xyWF8hl59GgVSH6okw66s12QKv4j9gBdDaN7tXvg352MZESFsRBOU
 COH8bvyZYSBaLQuPBYSHqiJzrf4+EE5YliKy4RGRV7JiwBtRudF27OgRx7pfiISvgGp+Xuu3uE
 HU4fDAtle2lNNyyJRGPzH4gb
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 Apr 2019 12:36:43 -0700
IronPort-SDR: Bt0jcdD1gm6d1cRvYD8xLZ7OUU/7ALDxMP8bBhd/gEWwUm0ZOsyuoXKhnV/Htgbmrf1RFmzG5a
 KdmEWUvthppVLvTA/Wn2Wuh9DNVRFYVw78A+JrkdrPf+GhM2TyGnTWr7XZAa/3XETeB0z6VmGW
 Nr8nyyN1U1289sezewNwGRjArVhMrC560i55lAnYqYS4xUqANmVFYO1xUWVEonuy8UVyPN4UZY
 SpvkvHtvLuG2nrfaNqKYpDrYj+YxmwOv76nBf9H3mxnpjf3yRS75QhSJzUH0vhLsZUtfAEVqHj
 T54=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Apr 2019 12:58:11 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] RISC-V: Enable TLBFLUSH counters for debug kernel.
Date: Mon, 29 Apr 2019 12:57:58 -0700
Message-Id: <20190429195759.18330-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190429195759.18330-1-atish.patra@wdc.com>
References: <20190429195759.18330-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_125813_224380_34C7FA5C 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Christoph Hellwig <hch@infradead.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>,
 Changbin Du <changbin.du@intel.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 linux-mm@kvack.org, Atish Patra <atish.patra@wdc.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Vlastimil Babka <vbabka@suse.cz>, Gary Guo <gary@garyguo.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv@lists.infradead.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The TLB flush counters under vmstat seems to be very helpful while
debugging TLB flush performance in RISC-V.

Add the Kconfig option only for debug kernels.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index eb56c82d8aa1..c1ee876d1e7f 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -49,6 +49,7 @@ config RISCV
 	select GENERIC_IRQ_MULTI_HANDLER
 	select ARCH_HAS_PTE_SPECIAL
 	select HAVE_EBPF_JIT if 64BIT
+	select HAVE_ARCH_DEBUG_TLBFLUSH if DEBUG_KERNEL
 
 config MMU
 	def_bool y
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
