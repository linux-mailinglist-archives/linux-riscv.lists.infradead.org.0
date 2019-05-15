Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C931E7A9
	for <lists+linux-riscv@lfdr.de>; Wed, 15 May 2019 06:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A2zeo6UV+z1rydHccwzBguriXILER8Rweog6eBVXrBM=; b=TZp
	W3V5pqPw98O6xDWaG/tQrbeCWEKx++6jRWxaKntwM+g/k0a1tzy9EzGvyfeU+BMYW7RAvxxpZry/0
	XmYj6BnOr7K6Ir6lp27hB+bQA8ZXudhDSdhmRtOn5JtLlVUDUAFqO18zCzgNl0T8702RCuuuxqtCK
	lxyq854TomGrrZkkdD9W0IkPLgHW5ftc1geoNJcQVqbX4SVgaSC+E2yVyk3LL2RG5fNgv/pFOEgMR
	G/CoJ20e9UgithcASOtOYX2ZFHO9MPwieXZJ909cXX6jO8dI7kW1/FircbfXPG0TSS685cGYKDk2z
	JrCiqYiQrZyM21z51jw0hvB11/F/IRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQlWn-0004ai-VZ; Wed, 15 May 2019 04:28:29 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQlWk-0004aR-IN
 for linux-riscv@lists.infradead.org; Wed, 15 May 2019 04:28:28 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x4F4RRTk023688;
 Wed, 15 May 2019 13:27:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x4F4RRTk023688
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557894448;
 bh=d7cf3ix/fLXBYCnmiBpWjAAdbjJ/zdoToHsAdljU21Y=;
 h=From:To:Cc:Subject:Date:From;
 b=ijSPLNUGoR3AMWOtp+aLwtzs84dlUcGxJXpH4F/wn0MI26y3Gb29inD3DopI9h9Cn
 /1tJpAnkst09vBH0bVB8Io1PF0rmV1oiOIjdl6sJ9iPthDfklQi9cyQ2WYUBsADXep
 V2hy7lfXg+9NryC/CZEWVopRUHSvADaOfd2iExNj/zO7yeah/S4OB9Rs2EJveG6C9q
 lScDMn0D9jIc3uvnBUhz8rXXM2PhgrHjaI+C5i4ZPTduM2hz5cDopTnOnNzvGryGCk
 kDdHLy0orS4SnS2kdbey2yKWJz+UP3taOo4bt2g0JNQo2KBFOWgnSA+RhwME4lxuEp
 MIaqnbRuDAB4w==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: drop unneeded -Wall addition
Date: Wed, 15 May 2019 13:27:21 +0900
Message-Id: <20190515042721.8752-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_212826_832916_795E1882 
X-CRM114-Status: UNSURE (   4.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The top level Makefile adds -Wall globally:

  KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \

For riscv, I see two "-Wall" added for compiling each object.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/riscv/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index c6342e638ef7..8f7368575bf6 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -36,8 +36,6 @@ else
 	KBUILD_LDFLAGS += -melf32lriscv
 endif
 
-KBUILD_CFLAGS += -Wall
-
 # ISA string setting
 riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32im
 riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64im
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
