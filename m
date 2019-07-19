Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2AE6E4C1
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 13:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ub92IP3MMY4YSPQ2UxanLsTGC8u9Un8we1UCRZD0cdc=; b=WPV
	Ksh7gIFFaCwmAH78qZiloYWCSc4kknxa2Sz+bQzvKtWfmXzDCIAsaYBJeBpR97GKttkChtdo6jfXE
	bK+YEJSz0xDKNLzupPFr42Jo8zeneMtciviDkCEdLugeE8R/lP7oqKotq3lr+4ceFKwezeiEd3jY/
	x5GS/in9vfUuv6XNMYEkGBjhOWNZZKEEViSoU1UvqihAnBD+XVKK4rhe8GaxlkknlreEvoKlDk8NV
	6LLcJfFoBQto5VNM5DBdJT4RLSvws3i4Q1dA3dUqJnLDtPzJXHZTJO7Hbez39gkRu+NCeg0tT1Bp2
	SUaORmweJUtUNuaJVjrmJYGsPhVGRwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQmy-00055T-3x; Fri, 19 Jul 2019 11:11:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQmt-00054h-5v
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 11:10:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id b3so15477038plr.4
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jul 2019 04:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pwS7P5TIt/JsDPbn/Wqhn2NHhUPFmyaKIcnCGFzzlHg=;
 b=Y9XnuhEHCwqrD+VnqN/I5dNL/nd27wLnf9HxZqu7Yg2OM1ueZeS0/g2KRiBLPiV5Vh
 4hUu/+Ylr0yt14FXLo5Gnu89VyujtGPnuS2GUYGP+RvCaSbVGqbmoMF46xJdSqWg65kR
 lUxhZhGb5kyGVIdh5UtVFHCKFDcb6DOXGmGDMcarVX71y4MR1lM5CHPX7vMzCvC/h1/X
 vhIlL78rYc9lkY30caXgi3S90FSEKQ+NViFOe/5mpqr67xd80u7OIRJZk84D9M858TKX
 bXCkzHwtY1xHxPOZhooFOOddV2kD+CxEPXtdsmidWv4IhJjIPUOvE99NM3ob8e3sLHxf
 FucQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pwS7P5TIt/JsDPbn/Wqhn2NHhUPFmyaKIcnCGFzzlHg=;
 b=FH3TdpBREgDGNLbNdX1ib3/1xV0uJLfqJWf4pqUzQkCj+zO8Vg8SOg0Sya13AM3htZ
 AA67B1i19fijIM6KgCZNTQz5r9Bef5bdHnrVIk6yYlt+A4pk6ffhOea/u0laPQv8fXAT
 HjoG500xuzJyPmMkv+jzPFOvMTsp6URy78temC16EF1HmTEqFrAiTZjOEGm9JZIFM5+u
 5eNlbtjvtaO97gPANwOMyRlzLfdgan6NOS1nwNvxzcfFtbFwtxGZ+fpDDOThQ/Z3UkWx
 O0SBJNdQrpzpYN6uKj4gHWrpUxJ0D8qKYvq3vW8RPnt1MUqLgK3eI/xWulZd1dz+0rD8
 iQiQ==
X-Gm-Message-State: APjAAAUU5JC78zDh6b1piyoYS8r6UrE2HjDDo68TkRxst6srCKrNO+Ph
 8j5LoJMrONS9KMG3OudlqRvBFw==
X-Google-Smtp-Source: APXvYqyEfzz9Y8lJVBzXseZAguoF4LfnLNuKFVbuRz6dNbLVuhE/7V+E74719q73vO5yqLfAW8EZSQ==
X-Received: by 2002:a17:902:9f8e:: with SMTP id
 g14mr10404199plq.67.1563534653921; 
 Fri, 19 Jul 2019 04:10:53 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id i9sm10196872pgg.38.2019.07.19.04.10.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 04:10:53 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, robh+dt@kernel.org, paul.walmsley@sifive.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH 1/3] macb: bindings doc: update sifive fu540-c000 binding
Date: Fri, 19 Jul 2019 16:40:29 +0530
Message-Id: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_041055_292592_FF06D03E 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, palmer@sifive.com,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per the discussion with Nicolas Ferre, rename the compatible property
to a more appropriate and specific string.
LINK: https://lkml.org/lkml/2019/7/17/200

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 Documentation/devicetree/bindings/net/macb.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
index 63c73fa..0b61a90 100644
--- a/Documentation/devicetree/bindings/net/macb.txt
+++ b/Documentation/devicetree/bindings/net/macb.txt
@@ -15,10 +15,10 @@ Required properties:
   Use "atmel,sama5d4-gem" for the GEM IP (10/100) available on Atmel sama5d4 SoCs.
   Use "cdns,zynq-gem" Xilinx Zynq-7xxx SoC.
   Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
-  Use "sifive,fu540-macb" for SiFive FU540-C000 SoC.
+  Use "sifive,fu540-c000-gem" for SiFive FU540-C000 SoC.
   Or the generic form: "cdns,emac".
 - reg: Address and length of the register set for the device
-	For "sifive,fu540-macb", second range is required to specify the
+	For "sifive,fu540-c000-gem", second range is required to specify the
 	address and length of the registers for GEMGXL Management block.
 - interrupts: Should contain macb interrupt
 - phy-mode: See ethernet.txt file in the same directory.
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
