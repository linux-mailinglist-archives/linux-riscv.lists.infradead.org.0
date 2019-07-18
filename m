Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3756D6D1
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 00:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2saO2o0niMrBvOvAV1KwRSUwgFmPRsUVlRauukvp2qQ=; b=aJ0vPNMrXQV4li
	kIE94bUBGehkJVLPqKuuVd++eRdGl3JBGjUyhiYHjLLQy/HF+OpW1GKGKWxXUarQJzvAXJUwytgNV
	GfVz33i9RwQ/Ixzlwv1KDlzjANGHISC02LcyN2RxWHXS5Ff5iJy+yp7a9+0Z08V87s+nv0/ro7Bs4
	1d/ZiOL/3GYxtc8y36aD3pZZXRel5A9obyxZezYKCnXqW0zzriLvVD+z+GvFNgMXMPXA68b63k4Ks
	osmjlGVGsbA7a0u93fsVaCoVDNR4yYZVq1nLncw+GJJYHEzcnXvAPYeao+28UFWzfixndJmuqOYMs
	H99vID3uOZl9Rmz+dqVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoEs9-0006cj-03; Thu, 18 Jul 2019 22:27:33 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoEs3-0006cH-SF
 for linux-riscv@lists.infradead.org; Thu, 18 Jul 2019 22:27:29 +0000
Received: by mail-io1-xd41.google.com with SMTP id e20so24005216iob.9
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jul 2019 15:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=/Nlsaz5MlWmeG7OKcfAd5EyR46Qw5/w4N5D2o/Xi5j8=;
 b=S2OJTrzZNoGv5Oe95478I33bsvRX3JhcvnGALVidpZsmcTGK7KRJc0EDSlqlS4L4XA
 0STBB7lVgcwjS/IJSIpaTAgsMJnKFFMooSAji1SDqJfCwsZ/f8u/vDaB4UocHIDdSTH1
 XKm5HvoVMCi1p5S0NGTQWcZCnpZH7a1YeTvkvdFiKe4szmrxwWlNeyUi1kTax0/HFPEM
 irdA7TC4I480cdukehKRLpNoHfzK/SsYlSnepp4W0TipFZowgpq/XEsK9gcipqh3RU4I
 EAIZy1rv4IuAp2RGvqEmTiTAwoPuYEUOPEvWt0KOLEUH5St9R+4BVVV04coqkRHolTwa
 9KAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=/Nlsaz5MlWmeG7OKcfAd5EyR46Qw5/w4N5D2o/Xi5j8=;
 b=BmpPblwRC6pyxWhWZpiTJgn14AQXVDIo1TP9QQ12IWGAzVJqi3jNSysxoqx7Rv8NJ1
 QAIPakzPlqHkTFtrOTxOiZ817bPgeDYFlPz/WsQj3TApZv23JkGyuvr3x8tG3bMN6lGQ
 hZD8gEiofNnmSw2CTc0xeCXKH2mwVQ2Lrc+0EJ09xdjlXxd61o5BxhtF9cSpKMuxLKNk
 oNt8vddOLoYUWyV69GVfR7h6zKVfU99aaul7RQNIEAmblmcq0cHRRruHMI07E+f8PoxJ
 TIF4MsRhak3shKp49r2ZldYlRB9rW0okO+q+U1odO7jotSspo2Rx4AwyO/y5uRuaGHnD
 vzOA==
X-Gm-Message-State: APjAAAWlpg0IghVeaAgbfGxpSVNZSFjn73CHPwXIMzE3y4X+fkEdujgd
 pm21n7QXh9I3hUxYwuSmFcFUVbpXv0o=
X-Google-Smtp-Source: APXvYqxYmBc5hPbEHd8dKBbXsXLhJPs3Zt6OYV7PpRmuLIRO9YvaCy8DLBta9gqpmIwjP84gIIx/Dw==
X-Received: by 2002:a6b:6b02:: with SMTP id g2mr40561759ioc.13.1563488845967; 
 Thu, 18 Jul 2019 15:27:25 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id f17sm26051739ioc.2.2019.07.18.15.27.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 15:27:25 -0700 (PDT)
Date: Thu, 18 Jul 2019 15:27:24 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH v2] riscv: include generic support for MSI irqdomains
Message-ID: <alpine.DEB.2.21.9999.1907181525540.20168@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_152727_927011_C07EB709 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Wesley Terpstra <wesley@sifive.com>

Some RISC-V systems include PCIe host controllers that support PCIe
message-signaled interrupts.  For this to work on Linux, we need to
enable PCI_MSI_IRQ_DOMAIN and define struct msi_alloc_info.  Support
for the latter is enabled by including the architecture-generic msi.h
include.

Signed-off-by: Wesley Terpstra <wesley@sifive.com>
[paul.walmsley@sifive.com: split initial patch into one arch/riscv
 patch and one drivers/pci patch]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
Planned for v5.3-rc.

 arch/riscv/include/asm/Kbuild | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 3d019e062c6f..b0a9fa34be5a 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -20,6 +20,7 @@ generic-y += kvm_para.h
 generic-y += local.h
 generic-y += local64.h
 generic-y += mm-arch-hooks.h
+generic-y += msi.h
 generic-y += percpu.h
 generic-y += preempt.h
 generic-y += sections.h
-- 
2.22.0

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
