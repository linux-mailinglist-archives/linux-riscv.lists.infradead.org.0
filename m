Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458921222D8
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 05:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uocyHCicgyR54zqlYy/1WC7vL6RVUN8Yp7Wz/S3z2fQ=; b=YJKvRLVWwY0iMV
	bS8dUTTRa5K+k7SgcS1DT406XCxMfkP3AR3oXG78BEAoPGEy5Q7ZJr6oUdjauNGAIYSS0X8muOY2k
	PwPl9rE6uA7/qDyhJCvTb3vDZqTjrl/De63XQ9B5dHlTVvm7qDHj8FGZW9/vLDUO/aRx05e0uOr/1
	5LzsrZxQFRT0mzXzd4TAqusZjyjSeQSEKXBsHauQv87Db/d3Qq2SfM0dMU+FfNaW25MstpEjv2sWM
	zoi0yaMKsaZ1enPibVLL6IBdlkvKc5UYwBQVtGTvd+6FXDIyH3kzmTZEOFGtOeDU0BftE1AWo0thB
	W2Qr6oCB0Mncd2uSNKsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih48D-0000Nm-Vy; Tue, 17 Dec 2019 04:06:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih489-0000ND-Fe
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 04:06:42 +0000
Received: by mail-pl1-x642.google.com with SMTP id p27so5444061pli.10
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 20:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uocyHCicgyR54zqlYy/1WC7vL6RVUN8Yp7Wz/S3z2fQ=;
 b=mMIfpm/iIionAh/tCeO/BqlPJh3nTdejcnbgxeuHQOdySh/Zeqtu1wr1ZgXqjZFKWD
 NU6HdolWLOh6KGTp8DpW3R/JjV7gWlDuGDscGnU3K88CkP1Pa75eREuIAVHVRzUYqfDF
 FQVbMZ1URnIa+5EutPbVRcfIWY9qN+sUHuwlq56kaLrqfQ3xINFk3EpScb4G2rUK2yfT
 cXIXjYUPoBwfsYn7/17s/RacpR0EqomQT9SjF/Tk8lJ6wcqTGkvwGV4EKyjt14vTGWBQ
 Wyr5L6XhAFwnpZAvZr7ItYaJjqgerzeRokD3MFLB+R/0WV0gw1vdjnVnvHu/JZwwu8kE
 Lw4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uocyHCicgyR54zqlYy/1WC7vL6RVUN8Yp7Wz/S3z2fQ=;
 b=BLo5yrhcL5cXq5Kd5RGwS9JlgRq6e/Eb8WH5uoRwD+aBnxs5oFm9GXr7Uv4WETerx3
 sNKPqFgd0klzZV1frzpJpNYZN3tkac1BNmIzxi1TTGk4AGT0PZuuO8z2EO7PVsTdXEik
 WHS0rppv5s7hMH+7RUr/AF+qLMHD8z3hw3icMtxEkNi9GDplS4XkVLyWFJqFL+5bHqyo
 nZK3m37z8dB2wB/JgKS/ssfhJ/nZ53kQB6cpJ2ZWMBycCv9ZdhjhWV4qZL4GOt7Dctgl
 8T2tAtorM+GTrzDgZXu1uP2gjk6f7L3yQUh0KSIPJAMoOkV8B/q9Fga9O++qUojV5i5n
 QsLw==
X-Gm-Message-State: APjAAAWl0jekHU9M7jX8A1RUSTF725RC7Kw4voFbBP5q1GDU1D5dpLDQ
 4aTc2jKPo+3LWJ+V/r00Z1tj1g==
X-Google-Smtp-Source: APXvYqwOUj/es4Lnlocupmtdv8ocU/JXMsOcO3BzL3fK+Fb2LapV0v2iGm5bIMFOwMpMaZF7mnGB5g==
X-Received: by 2002:a17:902:b7cc:: with SMTP id
 v12mr3439330plz.284.1576555600540; 
 Mon, 16 Dec 2019 20:06:40 -0800 (PST)
Received: from rip.lixom.net (99-152-116-91.lightspeed.sntcca.sbcglobal.net.
 [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id j125sm24830738pfg.160.2019.12.16.20.06.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Dec 2019 20:06:39 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] riscv: Less inefficient gcc tishift helpers (and export their
 symbols)
Date: Mon, 16 Dec 2019 20:06:31 -0800
Message-Id: <20191217040631.91886-1-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191217003057.39300-1-olof@lixom.net>
References: <20191217003057.39300-1-olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_200641_523423_9DB2F90A 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The existing __lshrti3 was really inefficient, and the other two helpers
are also needed to compile some modules.

Add the missing versions, and export all of the symbols like arm64
already does.

This fixes a build break triggered by ubsan:

riscv64-unknown-linux-gnu-ld: lib/ubsan.o: in function `.L2':
ubsan.c:(.text.unlikely+0x38): undefined reference to `__ashlti3'
riscv64-unknown-linux-gnu-ld: ubsan.c:(.text.unlikely+0x42): undefined reference to `__ashrti3'

Signed-off-by: Olof Johansson <olof@lixom.net>
---
 arch/riscv/include/asm/asm-prototypes.h |  4 ++
 arch/riscv/lib/tishift.S                | 71 +++++++++++++++++++++++++--------
 2 files changed, 59 insertions(+), 16 deletions(-)

diff --git a/arch/riscv/include/asm/asm-prototypes.h b/arch/riscv/include/asm/asm-prototypes.h
index dd62b691c443d..27e005fca5849 100644
--- a/arch/riscv/include/asm/asm-prototypes.h
+++ b/arch/riscv/include/asm/asm-prototypes.h
@@ -5,4 +5,8 @@
 #include <linux/ftrace.h>
 #include <asm-generic/asm-prototypes.h>
 
+long long __lshrti3(long long a, int b);
+long long __ashrti3(long long a, int b);
+long long __ashlti3(long long a, int b);
+
 #endif /* _ASM_RISCV_PROTOTYPES_H */
diff --git a/arch/riscv/lib/tishift.S b/arch/riscv/lib/tishift.S
index 15f9d54c7db63..64a7b6abd38fb 100644
--- a/arch/riscv/lib/tishift.S
+++ b/arch/riscv/lib/tishift.S
@@ -4,34 +4,73 @@
  */
 
 #include <linux/linkage.h>
+#include <asm-generic/export.h>
 
 ENTRY(__lshrti3)
 	beqz	a2, .L1
 	li	a5,64
 	sub	a5,a5,a2
-	addi	sp,sp,-16
 	sext.w	a4,a5
 	blez	a5, .L2
 	sext.w	a2,a2
-	sll	a4,a1,a4
 	srl	a0,a0,a2
-	srl	a1,a1,a2
+	sll	a4,a1,a4
+	srl	a2,a1,a2
 	or	a0,a0,a4
-	sd	a1,8(sp)
-	sd	a0,0(sp)
-	ld	a0,0(sp)
-	ld	a1,8(sp)
-	addi	sp,sp,16
-	ret
+	mv	a1,a2
 .L1:
 	ret
 .L2:
-	negw	a4,a4
-	srl	a1,a1,a4
-	sd	a1,0(sp)
-	sd	zero,8(sp)
-	ld	a0,0(sp)
-	ld	a1,8(sp)
-	addi	sp,sp,16
+	negw	a0,a4
+	li	a2,0
+	srl	a0,a1,a0
+	mv	a1,a2
 	ret
 ENDPROC(__lshrti3)
+EXPORT_SYMBOL(__lshrti3)
+
+ENTRY(__ashrti3)
+	beqz	a2, .L3
+	li	a5,64
+	sub	a5,a5,a2
+	sext.w	a4,a5
+	blez	a5, .L4
+	sext.w	a2,a2
+	srl	a0,a0,a2
+	sll	a4,a1,a4
+	sra	a2,a1,a2
+	or	a0,a0,a4
+	mv	a1,a2
+.L3:
+	ret
+.L4:
+	negw	a0,a4
+	srai	a2,a1,0x3f
+	sra	a0,a1,a0
+	mv	a1,a2
+	ret
+ENDPROC(__ashrti3)
+EXPORT_SYMBOL(__ashrti3)
+
+ENTRY(__ashlti3)
+	beqz	a2, .L5
+	li	a5,64
+	sub	a5,a5,a2
+	sext.w	a4,a5
+	blez	a5, .L6
+	sext.w	a2,a2
+	sll	a1,a1,a2
+	srl	a4,a0,a4
+	sll	a2,a0,a2
+	or	a1,a1,a4
+	mv	a0,a2
+.L5:
+	ret
+.L6:
+	negw	a1,a4
+	li	a2,0
+	sll	a1,a0,a1
+	mv	a0,a2
+	ret
+ENDPROC(__ashlti3)
+EXPORT_SYMBOL(__ashlti3)
-- 
2.11.0


