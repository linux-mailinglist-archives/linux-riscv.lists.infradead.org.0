Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4103F189396
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohhMsEsPSqdVABGyw3/cvkI6GJoQfMmhZPw+IbwcnGI=; b=QOVId2Pvl736ND
	lvdo2FpGbmYP6d5tDq9S3eS9UCLCt2tXqtgt+tlHrMha+CjY8k7I01lHE0B5HpsCGBNZmvTc2zRtl
	URCetOPcXNqw6KdCv27XNZKJPXbb7II0hAc0n34DHFhYp0jYq0RaItsh7m95klFkGGLy2ODxSN0O0
	cgFTAsjRjYHy7UyeM6i5F8/1RicuW3xo54X7gnG3qRorIeA+5tRwNFabVC419HENme6AuBHBS6OQe
	NdUDjsC/7JnrmSJ6DE/dgESzd9FzaW9qe+V7rdyEZld+C6ratazA/coZjzpA9hUvbE/7q1SPJnLKt
	vqTHQEX3RjB84LZswuCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENG3-0007VQ-CA; Wed, 18 Mar 2020 01:12:31 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFg-0006us-T2
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493929; x=1616029929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q6YXb32CE2pLZ0eeb2hmqPLZGTgurXN/jf3Ug28bkCs=;
 b=YqDudyiU9r3qZ8aiak6cE7cLSjMXuwxVknbBmm79Jh29FB9nQvt7S81f
 4BKQ7sucDOjU9FbizcsL2VxAD0DiDfQrgae4bPWjkSu0WOCfAKWVKqjB7
 1o1gPnsJREtPDKW95aJ2ze/mmqpmPFpEg7E/TB4+CkrtgIsd6G6fY2DWA
 gBpc/dHATvw7YSY688+hCIlxe78C5A+5gDEUcd0Qgkcj4wTfbZ76Z8UfB
 /F1vHBzLsUziKK54sifJvylxCpMuXtR0Lge4Wz6GlljgHxEdTLv0NfEiY
 3Dsbt+2ZsJPilQsDIUc0bbZz5PWD0SPvj6hXls4JZQoLnz1eq/5oOkhhF w==;
IronPort-SDR: +mc+PfI9d1M2Pb1wm5wWxYKMMeTqI+f9Yj5NdorzhZ/waE02LmcPq8Kf1RsBqSantj3ayolwy4
 eKKPHTOtEjMZfTOm5zi4WQVcEkf8J/TDe1TCKUA7sgJxVIJHLwuO19gecU56e2mjibmQdaBGHS
 gecDORsjlxCgc2GJHUAd1cnSxX21xdyr/A5DFfwKRyD6mAV2X2umGnlD9Ph+1C9fEqTMgB5mdY
 VQRDpvW7Ix8Uc8GpGvflhVcj9zi7wbWGsSNBOYj0Sw4FbojK7o9YTuC7jmhZIqOqCoKZc2Ii8O
 XWc=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242165"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:12:00 +0800
IronPort-SDR: hxDkEzBbWdxRuplb1L1o0EP375a/aPzE6N2n2NXuqhg3CKTzq0jICtHc1CuOmJChlt/+pZSMgR
 6QOGG7VE9kficlwvyzZKul0hRHURodV/Nfld/J7R5VW8b+BHg2upaTzLhVfbUqfWZDPFpweGl0
 KIEUWvLtAhxkLcQmrtIj6ZliZbYUycmW6YNWQuHyNLLlad5B3TzD/nsqQXtXCjFjM/blHHHltM
 Jf/h8x3qDPEefDvfA+75QfylVpVnpYgJZa5J+WV5lDYIDkXf7oqfBK4DEeMbhbhODoDqTYImqD
 WRK6f7BAyfGzVEltfd5Vvuzm
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:27 -0700
IronPort-SDR: yoRFOeeKE7eFVW9hxvf+GM8dj/MQId38frm7Hi/bC+DlqYxWz845Bj4zByRLPCtR0deYwX+zCZ
 xpn/OLtNxv0ZrjMZxN2EzHJXz0AFTqabAiTbXMlOv9lW2GCTNJ6xI7CK6GucFWSI+Aa/SUODu1
 /KoQ0X+1HNDsoFaflyquRjRSZB8Qwg6B9fXIVve3keYb5M1VSBzNkqvo4WP5pxL1CwmuZm95lY
 wZhgB4lb1yoDNKBvO7/can5netrk7DCcJUZa8XlK4az1Yc4uaOvt4t0KklCypquNW8B1ixtX6Y
 JZw=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:12:00 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 08/11] RISC-V: Export SBI error to linux error mapping
 function
Date: Tue, 17 Mar 2020 18:11:41 -0700
Message-Id: <20200318011144.91532-9-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181208_986563_1CCA52E4 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Vincent Chen <vincent.chen@sifive.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

All SBI related extensions will not be implemented in sbi.c to avoid
bloating. Thus, sbi_err_map_linux_errno() will be used in other files
implementing that specific extension.

Export the function so that it can be used later.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 2 ++
 arch/riscv/kernel/sbi.c      | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 29ce2c494386..2bbfd6bada93 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -130,6 +130,8 @@ static inline unsigned long sbi_minor_version(void)
 {
 	return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
 }
+
+int sbi_err_map_linux_errno(int err);
 #else /* CONFIG_RISCV_SBI */
 /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
 void sbi_set_timer(uint64_t stime_value);
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 1cc0052e1b63..7c24da59bccf 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -46,7 +46,7 @@ struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
 }
 EXPORT_SYMBOL(sbi_ecall);
 
-static int sbi_err_map_linux_errno(int err)
+int sbi_err_map_linux_errno(int err)
 {
 	switch (err) {
 	case SBI_SUCCESS:
@@ -63,6 +63,7 @@ static int sbi_err_map_linux_errno(int err)
 		return -ENOTSUPP;
 	};
 }
+EXPORT_SYMBOL(sbi_err_map_linux_errno);
 
 #ifdef CONFIG_RISCV_SBI_V01
 /**
-- 
2.25.1


