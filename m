Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADC9367CF
	for <lists+linux-riscv@lfdr.de>; Thu,  6 Jun 2019 01:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=36h61p880Fh5focfz2AB5VCPoYJp2dZjgoMMyOWnYlU=; b=bBJod4C6b+M/F9
	VwTC9264YDgNe0k5AC/P421A+osaGrAkQiocg782OaCu8jPAGWm0YjkwYnN8wk//X/BQlPIlpZ+Kb
	TMjJ8rtffzTbeBesnyd9M9S+ADyjkawRiFTibmnDo5JHNGKjp+aSFOMO7XeQUL9CAITIwhy6Vv52U
	wTTiJhF0qI8iBzMgGxkQmI7hfox988FpKvFbDqKt+qYbhK3xvwV4H7vrqEnPPtz5ecmXxI6Sn3hxx
	KfuET6ymUqgZtmxW9LVkUoL9qvKL9m5XBGWfYvhjCrc/cVT17L8LmHPuMD7bdCf25iXM5F4JzjSEA
	Gho1WZcp/TshxU3zxGPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYfB2-0004wm-7V; Wed, 05 Jun 2019 23:18:40 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYfAz-0004wR-3R
 for linux-riscv@lists.infradead.org; Wed, 05 Jun 2019 23:18:38 +0000
Received: by mail-pf1-f193.google.com with SMTP id u17so245580pfn.7
 for <linux-riscv@lists.infradead.org>; Wed, 05 Jun 2019 16:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=wTIcqb3SuSLYyX4jaiouQi6Jmmzy6iFQXQcUcQGoiGQ=;
 b=otoRpDEdqKb5dcdQLUlEgW44kCKptXOvHiuFHZVbsnwskEMHoa9GU8R+IL1FE2CSBg
 LWJ2HKQGNXX8q3sBl7hrNEVXVE6ME3xzon79xYgmDnsw8ZORECBBgm1+Hg1LSOiKZhIK
 /Gf/oFSnhapG7BUUBgBG/M2lmhA1Zukaxi0gBLYcToce7RhNMLQtxnOJ6XE16gwN0SZj
 D4Nk6pAS2ii1BebOsFbLY8u1W8rcFvPtTJuLiF5FYOp2RkfbM1weLx6dEjZTabUCNIOL
 cCv5/3ZaTKFcaFGDCNXsQ8Cry5Kg9YtrF3t/3vwUt3S0J9qIPr3hRSZAdQoN258ToJpN
 /SCw==
X-Gm-Message-State: APjAAAVFim4R+1ey5HYvQ9YcHyE8vzfHLvv89wonnf9b37U2WWXwd2BN
 ZQdZI+b47+o1BSI4d8ENT0G1fA==
X-Google-Smtp-Source: APXvYqz0UPjUzr2DqEeL3AT5OsS9mUtNgNeT44235duzwripPH47MW2Kti8j0fnIBEI9E3FD7pmQSw==
X-Received: by 2002:a62:7995:: with SMTP id u143mr50098061pfc.61.1559776715772; 
 Wed, 05 Jun 2019 16:18:35 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id y13sm37199pfb.143.2019.06.05.16.18.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 05 Jun 2019 16:18:35 -0700 (PDT)
Subject: [PATCH] RISC-V: Break load reservations during switch_to
Date: Wed,  5 Jun 2019 16:17:35 -0700
Message-Id: <20190605231735.26581-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
 marco@decred.org, me@carlosedp.com, joel@sing.id.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_161837_142254_244D59DB 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The comment describes why in detail.  This was found because QEMU never
gives up load reservations, the issue is unlikely to manifest on real
hardware.

Thanks to Carlos Eduardo for finding the bug!

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
---
 arch/riscv/kernel/entry.S | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 1c1ecc238cfa..e9fc3480e6b4 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -330,6 +330,24 @@ ENTRY(__switch_to)
 	add   a3, a0, a4
 	add   a4, a1, a4
 	REG_S ra,  TASK_THREAD_RA_RA(a3)
+	/*
+	 * The Linux ABI allows programs to depend on load reservations being
+	 * broken on context switches, but the ISA doesn't require that the
+	 * hardware ever breaks a load reservation.  The only way to break a
+	 * load reservation is with a store conditional, so we emit one here.
+	 * Since nothing ever takes a load reservation on TASK_THREAD_RA_RA we
+	 * know this will always fail, but just to be on the safe side this
+	 * writes the same value that was unconditionally written by the
+	 * previous instruction.
+	 */
+#if (TASK_THREAD_RA_RA != 0)
+# error "The offset between ra and ra is non-zero"
+#endif
+#if (__riscv_xlen == 64)
+	sc.d  x0, ra, 0(a3)
+#else
+	sc.w  x0, ra, 0(a3)
+#endif
 	REG_S sp,  TASK_THREAD_SP_RA(a3)
 	REG_S s0,  TASK_THREAD_S0_RA(a3)
 	REG_S s1,  TASK_THREAD_S1_RA(a3)
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
