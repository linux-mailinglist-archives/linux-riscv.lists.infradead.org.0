Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D544788C
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 05:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iBw91bAd2zPifKc+wxP/gCia5O9mGswjSSdB1YDQxjQ=; b=WGjfq67YwhncSi
	D53RtZrAor7zFjsczPchlcC94Jf6mHwu0ejmiUg2eHEFzlmBmk70WnP9o/fYx9UZhkOlWdjosmcBY
	cmDS4KzliEwWWrBmVyuqgiKI6TezV0w/7WvbU1sHEVjbKCWE/eYYn8y5MiX4XamrBsI2NegqcekTF
	NmYNQWwxxGbyu3FZ2F/lZLpOk0mo8ym4R6HCoTa03D4dNJSg2qz8vidUk8uk9YWD0uaLqO7pU1kIu
	RwOKcpUXxy1LSAoCSKUyzrtuhP5xPm+UqqzeAjcpDNtn+kMAdngWB17cR/TdQVwngXp63cKZ5e7A6
	676SeR62C5eVhwR+ichw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hci1u-0004KH-IG; Mon, 17 Jun 2019 03:09:58 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hci1q-0004Ju-Oq
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 03:09:56 +0000
Received: by mail-pf1-f196.google.com with SMTP id r1so4821575pfq.12
 for <linux-riscv@lists.infradead.org>; Sun, 16 Jun 2019 20:09:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=JdUwsVaQTRNccdYkz2g0saWxt8b9wX1OuE/HweEQR3s=;
 b=jR5IMEAwZpplDV9ieVMuz4ikz6qoWM7/IpKzV6ZfnuoGx3IA9dPYdpSEifbtqucR1q
 MJE8yNXcxHLQ/+fhiTv5o+LLBgvgq3TyodfjxcQpJNSSi+BRDYsCALDURwhdAy7zqTXi
 8jPCNACE2H+MdU+Xu6RF8sgwzttcsinoSw6Fee4mwM76/qRq0gV/fh8o8X43uoc1QNPI
 IEmsNbQQb3cuPZs3Q43OE8rTZiylZ6chfGA/h3i/lrFlOEZifHDSvMJ7D9oS49s1hQWu
 h8DmVK7SeWaDCvqEpC7CE6YhNTcVd2CHRDieaBUSV8pi23obzLdJNihIm+YYf1yPqhTx
 /Cgw==
X-Gm-Message-State: APjAAAUwTNOKWY2xYPuZJtwzbYJ3Xr9MOUiIe5Hwvo7EZKXl55h1GFq9
 QDyYDDjn51q8RNrjNAca87P4Bi92Ul9qvatf
X-Google-Smtp-Source: APXvYqyln+RRK0OrcI1sFPn7f5iG00zqT7kyCLhxj6fYaNkX8H7FkywU5hpzCpNgcyo3qdR5uTABxg==
X-Received: by 2002:a65:408d:: with SMTP id t13mr46642686pgp.373.1560740991886; 
 Sun, 16 Jun 2019 20:09:51 -0700 (PDT)
Received: from localhost ([14.215.134.187])
 by smtp.gmail.com with ESMTPSA id q198sm13949836pfq.155.2019.06.16.20.09.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 20:09:51 -0700 (PDT)
Subject: [PATCH v3] RISC-V: Break load reservations during switch_to
Date: Sun, 16 Jun 2019 20:09:47 -0700
Message-Id: <20190617030947.32175-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_200954_812848_5229CB17 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The comment describes why in detail.  This was found because QEMU never
gives up load reservations, the issue is unlikely to manifest on real
hardware.

Thanks to Carlos Eduardo for finding the bug!

Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
---
Changes since v2 <20190607222222.15300-1-palmer@sifive.com>:

* REG_SC has the arguments the right way around.

Changes since v1 <20190605231735.26581-1-palmer@sifive.com>:

* REG_SC is now defined as a helper macro, for any code that wants to SC
  a register-sized value.
* The explicit #ifdef to check that TASK_THREAD_RA_RA is 0 has been
  removed.  Instead we rely on the assembler to catch non-zero SC
  offsets.  I've tested this does actually work.

 arch/riscv/include/asm/asm.h |  1 +
 arch/riscv/kernel/entry.S    | 11 +++++++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/riscv/include/asm/asm.h b/arch/riscv/include/asm/asm.h
index 5ad4cb622bed..946b671f996c 100644
--- a/arch/riscv/include/asm/asm.h
+++ b/arch/riscv/include/asm/asm.h
@@ -30,6 +30,7 @@
 
 #define REG_L		__REG_SEL(ld, lw)
 #define REG_S		__REG_SEL(sd, sw)
+#define REG_SC		__REG_SEL(sc.w, sc.d)
 #define SZREG		__REG_SEL(8, 4)
 #define LGREG		__REG_SEL(3, 2)
 
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index fd9b57c8b4ce..7e5d6e035b51 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -330,6 +330,17 @@ ENTRY(__switch_to)
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
+	REG_SC x0, ra, TASK_THREAD_RA_RA(a3)
 	REG_S sp,  TASK_THREAD_SP_RA(a3)
 	REG_S s0,  TASK_THREAD_S0_RA(a3)
 	REG_S s1,  TASK_THREAD_S1_RA(a3)
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
