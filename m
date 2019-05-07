Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6202B16662
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 17:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Q6XZjG1Vj3LkFb8dEDqgyiOOZQJwH5fdGDuOhSFwB8=; b=QYxfVE84JWo8eO
	yNdkMogO6OORU1tXXuB4RbsAiTaXVA/iOwnicz6rf7hiEIY4RNbN0gIBhuU7RqltolYLf5p9wI0kn
	2eA4zQiNC444ohf5CoVCq3mxEDqzjCrqK1dxYU1Drxv9OXECCWerrLmdjD9tBfPN1IC2t71ByfpLM
	9wqcjXoxEOrBZOYs2nyiXLy18d6IMTffhPmp0roHr7i/Dx4dDYfJ1h3aPwtFuKZTs/2LTxYpMLhqn
	/tQ+hNNkY6+aECFRjPmdV1vcxLta7Atg1dDCcdzRLjWU6Vy5tDfhNfty/ncqtnWX0W1Hj64jWOkbY
	B39mVrxMm/TTmbfWdOGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1om-00024z-Uu; Tue, 07 May 2019 15:15:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1ok-00023a-7J
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 15:15:43 +0000
Received: by mail-pf1-x441.google.com with SMTP id e24so8808042pfi.12
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 08:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:to:subject:date:message-id:in-reply-to:references;
 bh=hsW4nLPXM+q/uY8MZYS1nps05YO+5x2cf5Nbss6qqYE=;
 b=ClkS187gzhi/j1pAPSt6DjelbgpPXv7fjPdfzDV5qJFZvVL/W1eB6MRvaIHMkL1YlF
 pAjVyMroQ4MkU/9oeDSWhJa17pUefKXId6mr8kgz0EEGuZQFP91sS1XfCqcXs47UF9rQ
 7dEymJY2nJgMLXRvZ0fz7wBEFuXsMuNoe8NdOShlmskNuDYYeOiJ8Tzj34QdKU5d8j4r
 ENTIm4l6tM2JOx2x+Lg4mIDkpXINbB8YaavDO/p+RBL4hjLoibx0xK8XVVqWMnaC7MdM
 DOogTingeVjfEUlirlITsKl3ddLCz/Y6H7rIgtRBx0P0UXMf6Ql3bnHCqLwkJSmQ09Of
 PJEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=mime-version:x-gm-message-state:from:to:subject:date:message-id
 :in-reply-to:references;
 bh=hsW4nLPXM+q/uY8MZYS1nps05YO+5x2cf5Nbss6qqYE=;
 b=lfGEysKViF47XVGmraAG0O+u52S1OAZCZiwmfMj/g8bWb01xpvEE3uSy01C4VkJraH
 3Y7LOXXZbi1twXI+g7B0Pcic1hEI1CjNLXjc+zWDe4Iq0EvfmmVm84w7xyJFmMay7Nq1
 cV7NpFxrCWBkrZpdkkksyjLVd8PcpgLeYA+3kb9Pzf9fl5CjkvO4g82riNLaDwVY7WH1
 TqIt2M1ytiBqGVQjOZYTTuAHJlB6/XLF9H7gTW+NiyQOWQZ1Zb3ApTOH/ltnS4JcUNbj
 GIX3HWYcErmy3hIqM6peFks1TCDM2OHEnevnS4bqVa4A9cPIhTKpE48h/DX4MOlFS/d5
 5+YQ==
MIME-Version: 1.0
X-Gm-Message-State: APjAAAWJ/nzh5dpMk2+xROxEQEO4kFrd294Hx4PrXhjPXLJhYQ7N/qfo
 1jCQ/Hhdp36NQCHFz9Q2EQVxmFsHb03f2BeifSFfmJ/bEilz+v0uB3oGqTA2WzIRccnX7j3CcNz
 xV5QvZf4fTpRV6A+xQ4wNcg==
X-Google-Smtp-Source: APXvYqxmlABOO00POLT4NWe6l6j+ZCfYLjr32u7zp94znUQbwT5xkhl7TAvUrQu4mpR/mTRnSdE+1g==
X-Received: by 2002:aa7:8046:: with SMTP id y6mr42416829pfm.251.1557242140707; 
 Tue, 07 May 2019 08:15:40 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 2sm5397398pgc.49.2019.05.07.08.15.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 08:15:40 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 v2 1/3] dt-bindings: i2c: extend existing opencore bindings.
Date: Tue,  7 May 2019 20:45:06 +0530
Message-Id: <1557242108-13580-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
References: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_081542_268253_8BDD0766 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add FU540-C000 specific device tree bindings to already
available i2-ocores file. This device is available on
HiFive Unleashed Rev A00 board.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
index 17bef9a..f6bcf90 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
@@ -2,6 +2,7 @@ Device tree configuration for i2c-ocores
 
 Required properties:
 - compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
+                    "sifive,fu540-c000-i2c" or "sifive,i2c0"
 - reg             : bus address start and address range size of device
 - interrupts      : interrupt number
 - clocks          : handle to the controller clock; see the note below.
@@ -67,3 +68,22 @@ or
 			reg = <0x60>;
 		};
 	};
+or
+	/*
+	  An Opencore based I2C node in FU540-C000 chip from SiFive
+	  This chip has a hardware erratum for broken IRQ
+	  so it's recommended not to define interrupt in the device node
+	*/
+	i2c@10030000 {
+			compatible = "sifive,i2c0","sifive,fu540-c000-i2c";
+			reg = <0x0 0x10030000 0x0 0x1000>;
+			reg-names = "i2c-control";
+			clocks = <&tlclk>;
+			clock-frequency = <100000>;
+
+			reg-shift = <2>;
+			reg-io-width = <1>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+	};
-- 
1.9.1


-- 
The information transmitted is intended only for the person or entity to 
which it is addressed and may contain confidential and/or privileged 
material. If you are not the intended recipient of this message please do 
not read, copy, use or disclose this communication and notify the sender 
immediately. It should be noted that any review, retransmission, 
dissemination or other use of, or taking action or reliance upon, this 
information by persons or entities other than the intended recipient is 
prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
