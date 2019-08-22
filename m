Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909C6988AB
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 02:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5J7v2Xr4Oc8j65RX3gO1PW8BK6lWtMWJPVHf7E4mrk=; b=MfIRIKSS4nqEBZ
	BXHDWwqKLglAgFZT+Pgz3B8g+34gy77RprAB9g6gGCF1Ftcgei6j4mzrLS5FGKs0dXuG6pSRvEWDi
	J6yRLm/lquYIYgiJC93NEBWiIZcCLVu4UuKxNMKQT9F0Y/KPoMyk7ogw/msuZAzD2F+OVuZxE87Zs
	Vp6v2yV1cYgPA83b4bpQbtTnDHewws3ZZelVSdYF8UDDhydnkg4gtwLTWzZmyeHBwC0n/lG1qUf/L
	0ehFacJxlcmpLV4Ys/jIVNtQMeOEeF3jrqUSiwGiWhO+4z4lBbT++z/Y2uH1KF/s4BuHB9aeKRLQc
	IVc1VO8X6wZ4dhfpHJmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bFg-0002uX-CD; Thu, 22 Aug 2019 00:46:56 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bFZ-0002m5-UU
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 00:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566434811; x=1597970811;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YlJDmiJLhozVCCONzet/NwZI4xFiot+23HMp3bKyELg=;
 b=LbmEGoJxIv25SR5OzaYrOXmzheZbRJDGBgTeogbp6zLpKcUbBhwsNyQQ
 6Ary1sO+jpFP0D+b8D69KceMvMSCpAptFdVCh/bVDbSB4HOpe7vvzAA+V
 shXFD62uDxDuSIpB8bezR+fWJ6oNGFJkCQbgseuxR+qW4AeP35S1KyhOa
 H2m+hbcOIO5pOBD3LPaqceJdkDTLjR/yLMRLJNzE3ma63JcEMgjdKAYNY
 aK8tyoTDW+jyIX0pqKGU3mQzSTVf4JTnQQIpf9eG0IpgH4gvN58RVO2X2
 FWMWf+1rQwh2uRVNw6GQI5WiDV9j5O+5uMpuIwhKfc9mRd7fCw3DXCGWI g==;
IronPort-SDR: vsSkJS7+ptHQsKE9WHv2h7HqY/By+GADc2Kckqam3QwNmmzgdQ5UnwCW28vLkAowKv8esVp0XH
 IM6cVe+iLyLB4dNzvnZ5hnOgBWA4x0bmU1rDpgcq3GSvTgloih4BcTj+QI23M4tbMt5yQhrgUD
 2hManNjkf0e8sI8wRSYwf2PqUTEYkLlCsnmqmya8mjW6VAUEr9uTvCALpEvmu4BrQEHJMlnXCW
 pNxgQy6r6Km7Nc7ceSu1GMU2wl/lHF4JUiayXsYfFUsR8LkePgMI/d7wKvpGoVzJ2BGLjBNAHK
 sgI=
X-IronPort-AV: E=Sophos;i="5.64,414,1559491200"; d="scan'208";a="216804439"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 08:48:32 +0800
IronPort-SDR: 0NacHgVI86TpIxxGGM0SR/KttICLRE1OnB+V41C/ECGy4kNm9rBsrO9hOrQvrrgDIBjvbDbVx2
 +pXio28nfTY2AwD1zBHsPHn0hybV+QDwKnUrnyqgyXwDj9TMrCEC/5fmRJcS7iKDOjGgcsXJIh
 zKcur0ScE6aCl2npGNp8nY1Wl3f+Mx1i/q9F4x5CpvyglGLo5rqLPr1dB3ZBxPSlRl3g9zSOcg
 PyvhEV7CwgTeQHPA2sGpxeax7gL2jdxVbeUfgz1iZTsJ62NEEuTIO4oZ/Amq84WZXj6LOGWqsT
 ci8M/18m0GOflkfV+EqXgxK9
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 17:44:04 -0700
IronPort-SDR: HYUsOW/XJrLNmL4Jvw+YV1eMd4r1pZej015AjlwdtGCcqCmLZcEFcuvZUczk1QqfpfRU2gI+iK
 zBQZc+Cxyr0xD6KjQUy6cPLxyIstg8xkVVxEFGmEYlJT3IRbUA29M581QIhg8AKzDyp4e0yEoK
 Gy2oKkYOOjBDnaTgGmeh4Ju4IJS3uoBufXp8nYXCWFed0ZclGgwdgHwo+T+oI4Vvo57VwtLrKO
 o+MHJKaXQEPguVb5HoGum31fc4ETUQuuyn0+7D9QCzk4Uj6zCrSOj2b6bzrir3OuMC7SivUc2f
 Mvo=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 21 Aug 2019 17:46:46 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] RISC-V: Do not invoke SBI call if cpumask is empty
Date: Wed, 21 Aug 2019 17:46:44 -0700
Message-Id: <20190822004644.25829-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822004644.25829-1-atish.patra@wdc.com>
References: <20190822004644.25829-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174650_029190_08760D73 
X-CRM114-Status: UNSURE (   9.72  )
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

SBI calls are expensive. If cpumask is empty, there is no need to
trap via SBI as no remote tlb flushing is required.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/mm/tlbflush.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
index 9f58b3790baa..2bd3c418d769 100644
--- a/arch/riscv/mm/tlbflush.c
+++ b/arch/riscv/mm/tlbflush.c
@@ -21,6 +21,9 @@ static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
 		goto issue_sfence;
 	}
 
+	if (cpumask_empty(cmask))
+		goto done;
+
 	if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) == 1) {
 		if (size <= PAGE_SIZE && size != -1)
 			local_flush_tlb_page(start);
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
