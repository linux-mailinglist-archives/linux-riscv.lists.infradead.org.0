Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AC47B78E
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 03:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5VU1U/Y4YlGD/wAVIGFBHxpJ/SBdm9akbwaAtGvHU0=; b=MVF6ddEMsOpnTX
	vXN1MJvIdDXYWPj6hecf5h3I6L/w6pUm4XQkX2YgKq2plwdDPZ39Q8c7zyov318Fjhmq8hO5X5+k1
	kc9ULTU10hsRVyQPLdEaZauA4ktmtMwTfUFeHhY+4O0H4ySZqp1gNOxsDM05ZcvmRbgd1g9S1t6Nw
	fDZYZc/UkcQsRRU24+cuN9JOC4OLel4WflOP3pmkqk2s6NbwBgMp+IPEtLPpHM6Yy7qp3x7+IdvkX
	/ZHshKdY8TCUtbHBgELrg0IVdeZmKRyYBIhUGfMHlkelhCT5MggjdgFx3ITXXdX/6BdEHX092GNpF
	86QCUj6MIfyQi43OiB4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsdMJ-0007vz-Un; Wed, 31 Jul 2019 01:24:51 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsdMD-0007o1-AJ
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 01:24:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564536285; x=1596072285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EgHMt/UGrlopQ8ONP3bfsGEh2iUNdhTT7QH850cl4Xs=;
 b=dS3CUMPFcWoMLzWvLT7IET4pt3PB+krx82E5Vd3UIN4109ZXuy+fnCNY
 BWc774MgscsdVOiQ0mUnW+LU3BlI7im34r00Av135oZVogRL2+KZQcSbp
 IxV+Z1UgECAkzZLdRsaPZS0JhUIl6od1+gxUIRwUUn3L3NAaylVl8D5YZ
 xH0ZxalhpmUCsgQSUigQZHDC0S7LwCOnbNTevAhrEZinHaG1XEhE6hMq4
 BC8px4p4CrY4+HffxlbR42anHy2KC2Jf+oFlpG7IoBUwrSP3nnBTvzB7i
 ujmSEpssviQHnPJPJ00zQUjDu1VOb/jDrYVD9cXUfEn5KObXg/JGigCoo Q==;
IronPort-SDR: LBOSBsjkH0zdsONyhNYa8bMNbFenwjaQWZvNQFlb8ot3C3JYmzt0waXK5J/z+Oaw8VnFOrKTXw
 CApeyPyctK7mPPU7p5xxiiCWWDy5g3WHcMlxCWgELgSPBID05ftC0+8DlteD2TOySbjunFJFcZ
 LiRLHidsK61pDp2VRve3oMDW+MkhCr4FKtPe7mBjgqgd9GcK7jSskhfx2AbxhPdIQRMKbceO8q
 V/S060U3ohGXjfTVJkaO7bvA4IW+7fA2sGCQBUB55Z2vjNF4Ujsj+qtTc9LnXOawgupAyEQFmi
 rMc=
X-IronPort-AV: E=Sophos;i="5.64,328,1559491200"; d="scan'208";a="119218136"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 09:24:37 +0800
IronPort-SDR: /8VnL9XwV5y76hsLTb9O5An+lwvWUVdivGYLxjbgebcR5k5eAKR/xjOa2mdnmDs2HQj4aRZms3
 ro1C6EiG7SiRkcJVxUz+1exzAZkt015clax4s7x2ipCHZwaQ0M7pMjk4p2EszycLayDKSBMDqc
 p4sFAul2cAblMCvu3TPwaszKu4RYGrBkX4DPRqdE6JCw2QYKIlmfY4mepZF/Qswbi5DRIiOaF0
 xf3VUpUDrBjP8GMPZwGfLjTjqiF2EYl20HzRXubf9vv9LLzUT1TW0EPAtzUPa68GdJvzeuYXFI
 HuiuDhduVyqZpzaLWHZcOMZ8
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 30 Jul 2019 18:22:39 -0700
IronPort-SDR: 6WhK99KFChD4uhKSHGkuZlee3PzPR5qo3CSAAgjGPRSkQu2snl96a05sxvbzaGR5qJ3zsthNzq
 LhcsNwSlhqBqRVlpk+2KJvZ/e53UiIl2vxpy8pfxv1DlnIOKVI0jtLj1dl6QdJBvU4sn0zcVEt
 9R7KfnddbM0lhOd8B4om/rbcORIcoqAtijqMEKuEGESPOrdpQ1ctoHW9rkCpBLojn4EAy9KWGQ
 1chiav2O6t788cuwTmsS6g5JwMNBibpKzipWgY3MXmLBpli8xbCNlIxEj/fHaoHNFRKzMT/3V9
 kvA=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 Jul 2019 18:24:37 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] RISC-V: Export few kernel symbols
Date: Tue, 30 Jul 2019 18:24:17 -0700
Message-Id: <20190731012418.24565-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190731012418.24565-1-atish.patra@wdc.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_182445_471456_19C334B0 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Export few symbols used by kvm module. Without this, kvm can not
be compiled as a module.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/smp.c  | 2 +-
 arch/riscv/kernel/time.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 5a9834503a2f..402979f575de 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -193,4 +193,4 @@ void smp_send_reschedule(int cpu)
 {
 	send_ipi_message(cpumask_of(cpu), IPI_RESCHEDULE);
 }
-
+EXPORT_SYMBOL_GPL(smp_send_reschedule);
diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 541a2b885814..9dd1f2e64db1 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -9,6 +9,7 @@
 #include <asm/sbi.h>
 
 unsigned long riscv_timebase;
+EXPORT_SYMBOL_GPL(riscv_timebase);
 
 void __init time_init(void)
 {
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
