Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BD5121FC3
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 01:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WSuwwYIVFUsjY7TS++RdcJdZuzp4+uR38u5yiZR0+uA=; b=g3OyNAG/PmSIGd+FDYnA+CjA1S
	OeL94gvgZ9p6y7zfs4GzkotuDnXOc+6gbSAknGdnf5PAFCMYTWxg6ym+Yt+wJUZNOWntlPnzjrI/q
	BhNGfH5Jnht/CHW+SEI4ZrJJh43n4yGqXvjEHafl/j3054BLeRJLMAkSusFqv+XuMpMveiUjs66/T
	nYIU2njfBJx7MrxejtImW9lSwswoNnIFlspCGctfYPfJ6w3pdahmUV7RoT8zcRK5+DL/GAXP3bu1D
	YEaAvd0t9eCW6UC457Coxr3nrugKQ8bg//AkPBpZFv7VERYeNLEXu/lx0yFhcJmQ/FFmcwe3j8mR2
	g2KqiR4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0le-0001MD-U8; Tue, 17 Dec 2019 00:31:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0lb-0001LN-JK
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 00:31:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id y14so6522220pfm.13
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 16:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=WSuwwYIVFUsjY7TS++RdcJdZuzp4+uR38u5yiZR0+uA=;
 b=pzuQ36fylxKrCIkJKdqN8movucWUzwoSOb3tudW2cHu8/4aFYzDQo8Oz1c8JcxN/In
 0PB1to5e5OIHrkBbcIldpGY4HdcESInV4uhALiuWHN+CDyH0CgsdS76BoXqvP/vD1e1q
 /TDuOOMuUlPWyFKny6/RLI/aX/As13Ycxijm72/JO1eofaS5KVDiAUnOllzmATDp42SE
 +F7pPB0+fPCV8CfcuDhdi05RSKhEWdvjCdvFnsaJqC0v0QCenB+utLL7RNjdS77BVnja
 crZ155pMNcjK/buMed0MxSf8v2l1H3daPYB+RgCy+tncBhqLcLOb3yX2zDBLqgnbvdGl
 QFEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WSuwwYIVFUsjY7TS++RdcJdZuzp4+uR38u5yiZR0+uA=;
 b=LrAwCnQX3Ej3Ogydr5Kmv2w/7yNOgMVN1uN/MmCvjRhzMWf75cc40mUnYmurFT6vMu
 TPvxQLhQb+haVfso1edPP6NI9XEzIiZ/ZO8nIqo/oci/Cx9B1r9IDk+Ya2q9oraUCCYM
 NNpIVs4C3qtLlFCJm3GtQrhH+AJo447Vw3OzqHKj2PHxWle/4DW3cekKUtFwDe/DbKta
 oqUqsUd3Rs6ALeI1bw9wSUT430f1U7p9HE9L72yraBRABHp3kbqTb5DMbmiYnC3sXIn5
 8yH9+ijdfchILFwMb2jd5ebvNHOn0YtQz7vkQ32EekSoLx7k5NQYKYz4jrOHe5J2SoTX
 yKRw==
X-Gm-Message-State: APjAAAUbs35PCXzJd5+RQQjBrBxJuZB9OvpiCrgmlFje6KMtd6DJJwdf
 Q/wsomRIU+8kINRjB9W2p7bQRQ==
X-Google-Smtp-Source: APXvYqzC+hbsFEokWS5VHXNRrZx29+QKBmic6aWP/F1soS5H6PGZYbgptLUiZUzB0PITqbhhajGUTQ==
X-Received: by 2002:aa7:86c5:: with SMTP id h5mr18989496pfo.259.1576542670651; 
 Mon, 16 Dec 2019 16:31:10 -0800 (PST)
Received: from rip.lixom.net (99-152-116-91.lightspeed.sntcca.sbcglobal.net.
 [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a19sm23813873pfn.50.2019.12.16.16.31.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Dec 2019 16:31:09 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] riscv: export __lshrti3
Date: Mon, 16 Dec 2019 16:30:57 -0800
Message-Id: <20191217003057.39300-1-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_163111_695380_01C283F5 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

ARM64 exports it already, and recently it started showing up as needed
with allmodconfig.

To keep things building as expected, let's export on riscv as well.

Signed-off-by: Olof Johansson <olof@lixom.net>
---

It'd be nice to see this go in through 5.5-rc, since the breakage showed
up this merge window. It was triggered by ce5c31db3645 ("lib/ubsan:
don't serialize UBSAN report"), but I think that was just coincidental.

 arch/riscv/lib/tishift.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/lib/tishift.S b/arch/riscv/lib/tishift.S
index 15f9d54c7db63..8ecb7db331cfe 100644
--- a/arch/riscv/lib/tishift.S
+++ b/arch/riscv/lib/tishift.S
@@ -35,3 +35,4 @@ ENTRY(__lshrti3)
 	addi	sp,sp,16
 	ret
 ENDPROC(__lshrti3)
+EXPORT_SYMBOL(__lshrti3)
-- 
2.11.0


