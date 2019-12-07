Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B69115EC6
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Dec 2019 22:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VSt+6+RxN+ngtZtzcjXuc8nTvxksoum1JuKvq2Ql5sg=; b=DK+1d6T7Cudd6jvYeqr2mwgZRh
	XzrlN6DdKdwmysdt73zJGizw9/4FjWPJnhdt2Mli3C54WYHUHIHudaVXZ9JEldlGo+JqDauCJTb5y
	OPKYcanXNzleoMSc8E3CcdMFqznErEIpZb++oy0Y5dNGJ36QA60AzdimnyNb6XQ9eY/srWFm7kwVr
	E5umsdETGDi+vEtZCSggzOXa9kdZSredCurg77Upy9b1FfwaXaX7dpD/742a8N9XkoK5PkI+mWZxf
	+pkGM3cnP+k9MGBvI/ZteiBIKGjaeijZ4vw4TOIJrl4XmjwruHzGW7YMfNEMizFDIQo9GHwuKBk2C
	RVYshpQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idhdt-0007N7-0p; Sat, 07 Dec 2019 21:29:33 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idhdo-0007MF-AY
 for linux-riscv@lists.infradead.org; Sat, 07 Dec 2019 21:29:30 +0000
Received: by mail-pj1-x1043.google.com with SMTP id v93so4205352pjb.6
 for <linux-riscv@lists.infradead.org>; Sat, 07 Dec 2019 13:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=VSt+6+RxN+ngtZtzcjXuc8nTvxksoum1JuKvq2Ql5sg=;
 b=zOevuRPu/tVt8TS7J5KttwWizUBeGQkN0ITicML1mI6x5OAiyq7GfSoODxLaOKvhfy
 lJwyBJd4+zfiyYFstz7KcyghJ2qdBvllY6+DJjRFeFu4OL0Isu6W08QQ5NGCfjo+gkvT
 7RPK8Aobq5OWZRIkr41rCNN135TEl/nNEyvV11JNyBMs+Wlj3MKJqfOwEozEe+k88R/Q
 XGquH7HY8sa9ehOaIpEyiIyXdI2vgnbkWXEBaKY4CzzOh2XR2EQ1q+h53sNRY6/C/9z2
 pZnbVSzVAc3NceTJplZyHvpylkKat79O6sWW51t6ZqVZtHTDCpQ3lGhLKQXI8DoKCnFT
 cT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VSt+6+RxN+ngtZtzcjXuc8nTvxksoum1JuKvq2Ql5sg=;
 b=kw6/cWlx+RdwcckJJvmMthI338udRbTlXWKxKYctTL4s7EgmagiwZcl4C32ZFlMKQr
 o5q8Sze7pNtGPcimCZR1HMCt4gyhyVuyUUmygLncm8z1aEK2U4Qk06EL8SwHMFvnUgBT
 uc0nirReQXx1KGQGhrIB+gHYomuIqoRF5wZjclqBHwQikncJn6fl8MADsx9VlAKfIMt2
 gZ2Wj0bOnkWkqdexLvEYc6OeT0Zh9PKiXzaHh9CWUsGhVsjf5bFvNuLO/2QRitg7nBvz
 sSI8svu/tjte2Sfu1fitA7FO0jYvKImz999T6/uKMrYgL3nl2udZVoKS/CPLyTtTE/co
 t9aw==
X-Gm-Message-State: APjAAAVu+TPhvXH0+ngxlFpFFYVyecEfmMy2279R4rqZasTLIKZzs4db
 qRlKDPnt4ICjAcwRw3kmoQ1/yQ==
X-Google-Smtp-Source: APXvYqzFC3GMHXUGEUDK6KLYKA1CQWnfA106/qYuSJ9km6BCLDQgjaLz2dIFbK9TR6zthTrxe30nvQ==
X-Received: by 2002:a17:90a:a798:: with SMTP id
 f24mr24031614pjq.27.1575754164952; 
 Sat, 07 Dec 2019 13:29:24 -0800 (PST)
Received: from rip.lixom.net (99-152-116-91.lightspeed.sntcca.sbcglobal.net.
 [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id 23sm11683377pfj.148.2019.12.07.13.29.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Dec 2019 13:29:24 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] riscv: Fix build dependency for loader
Date: Sat,  7 Dec 2019 13:29:16 -0800
Message-Id: <20191207212916.130825-1-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_132928_367775_329DE087 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The Makefile addition for the flat image loader missed an obj prefix.

For most parallel builds this worked out fine, but with -j1 the dependency
wasn't fulfilled and thus fails:

arch/riscv/boot/loader.S: Assembler messages:
arch/riscv/boot/loader.S:7: Error: file not found: arch/riscv/boot/Image

Fixes: 405fe7aa0dba ("riscv: provide a flat image loader")
Cc: Christoph Hellwig <hch@lst.de>
Signed-off-by: Olof Johansson <olof@lixom.net>
---
 arch/riscv/boot/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index a474f98ce4fae..36db8145f9f46 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -24,7 +24,7 @@ $(obj)/Image: vmlinux FORCE
 $(obj)/Image.gz: $(obj)/Image FORCE
 	$(call if_changed,gzip)
 
-loader.o: $(src)/loader.S $(obj)/Image
+$(obj)/loader.o: $(src)/loader.S $(obj)/Image
 
 $(obj)/loader: $(obj)/loader.o $(obj)/Image $(obj)/loader.lds FORCE
 	$(Q)$(LD) -T $(obj)/loader.lds -o $@ $(obj)/loader.o
-- 
2.11.0


