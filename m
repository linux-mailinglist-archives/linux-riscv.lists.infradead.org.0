Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D5F27C12
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 13:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pxUXgFxQZhqJei69hnTqnXJxfNse5WXbOMei4homgWw=; b=WhnqtZPkMf2XMO50FKTszM6I2S
	0pfTxgqsWagwETbogl6bX0EKkwKwuYLWS9Q7sVZgAAil25o2dnms/Kqd3Vcqz1WYLN12IDO2sVZN3
	BnSdWw34qa9gMM7HTlfcCw+2d1/m3/Rv7NNUWdkN6nR8X7nFG5W/aS3qfWjyY4kXGbQsDYUBg3Cz7
	5X7lDsFP1UmZGhDtFyDSRxM5+nUj7j1aniyR/hiOuS8nelvXmS2bxNX3GT5upu96iIOrkUSYlkJYC
	eGhK4nzfsiG4uWxDy7DSjeXb5LbbEc1+GbMUxd2doecM+oCA/bA03rkp2CgahYmXW6/hbCi6gIuE5
	3QVq2tfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmB7-0003Yb-Mv; Thu, 23 May 2019 11:46:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmB3-0003Wt-OF
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 11:46:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id gn7so2653142plb.10
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 04:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L7jtC9YLwA0closzFKH5J5lT2qmKzUMNqjaIDumr77w=;
 b=J7/qws0Qxp3NVZLnHy2qXlZRe+iDyhBpqBA9UAirr+0rrSH2reViAepFM/UquHryeC
 kAfTHH/I2AeboDE6avThPcLAVsl+d70CrgbKZv4GCmnyhp/O9i/jUh4XNUledWpIYKa9
 cLJR1D40KnLdmwRxxicn8hbF+jHu5jHp85TZS050DNv4WRRgUT3Qac1/3NA+d++p9U46
 MtK7xisAUL0tNQld94DBPXeHZOma/juwPjqawte5LaeeUJMiarRZhg31h2LdPf8SxCgx
 XHOVHNtiTM+J4TP/KWakDpvTm7KuBLCG7royYQ0lMAsmSol24XTrpoWMOTcQ4JPwC/Gd
 5zJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L7jtC9YLwA0closzFKH5J5lT2qmKzUMNqjaIDumr77w=;
 b=rV8aQa1yMwCJWaCx/fHTeqT/C1XBhCcBZ6hDUzTpud8ru4g9yd8B35lR2chS4Yv1as
 4e+MSiHD5OgsB/VAYMFt+d55BKmYa1gPsDc4MvNvipFmNklV/5doB4lBYh52sBxfVLMM
 cKpsGMkPd15aduMs9bt8N2J5M9Gh8MrFvP19peDKfwKHzBpCVr/28+OpBvDv9yfnIVPY
 Tfc4Aep9y6K6JhlrP0fZfSAb1xtenYJF0ZRdn92qAvgVqLnHyOf5z3aWXEdpg4xqm0MX
 z1YB7CSi2O1NlpVQR9w8ArCLZe5ofVEvrXlKk14gyKg0v34BbQqXhh5fWfvMYPT13z2B
 kZAQ==
X-Gm-Message-State: APjAAAWALwC8RwfHFxe97bma8Pd/smrR/hxRbZ0elREm5/lWpVnAj+Vr
 uJpIOmbwoYkUoI0Ul+CyauYR3w==
X-Google-Smtp-Source: APXvYqzYfysVuLot60OmXdN5I7JacwSrGu0ekg3Gy2uMSozgIxzrs6RFjWap2hpiFOPQOvuCvlVNqg==
X-Received: by 2002:a17:902:1121:: with SMTP id
 d30mr2953751pla.153.1558611989302; 
 Thu, 23 May 2019 04:46:29 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id l43sm565045pjb.7.2019.05.23.04.46.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 04:46:28 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] net/macb: bindings doc: add sifive fu540-c000 binding
Date: Thu, 23 May 2019 17:15:51 +0530
Message-Id: <1558611952-13295-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_044629_805782_88AEC392 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, palmer@sifive.com,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org, paul.walmsley@sifive.com,
 ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the compatibility string documentation for SiFive FU540-C0000
interface.
On the FU540, this driver also needs to read and write registers in a
management IP block that monitors or drives boundary signals for the
GEMGXL IP block that are not directly mapped to GEMGXL registers.
Therefore, add additional range to "reg" property for SiFive GEMGXL
management IP registers.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 Documentation/devicetree/bindings/net/macb.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
index 9c5e944..91a2a66 100644
--- a/Documentation/devicetree/bindings/net/macb.txt
+++ b/Documentation/devicetree/bindings/net/macb.txt
@@ -4,6 +4,7 @@ Required properties:
 - compatible: Should be "cdns,[<chip>-]{macb|gem}"
   Use "cdns,at91rm9200-emac" Atmel at91rm9200 SoC.
   Use "cdns,at91sam9260-macb" for Atmel at91sam9 SoCs.
+  Use "cdns,fu540-macb" for SiFive FU540-C000 SoC.
   Use "cdns,sam9x60-macb" for Microchip sam9x60 SoC.
   Use "cdns,np4-macb" for NP4 SoC devices.
   Use "cdns,at32ap7000-macb" for other 10/100 usage or use the generic form: "cdns,macb".
@@ -17,6 +18,8 @@ Required properties:
   Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
   Or the generic form: "cdns,emac".
 - reg: Address and length of the register set for the device
+	For "cdns,fu540-macb", second range is required to specify the
+	address and length of the registers for GEMGXL Management block.
 - interrupts: Should contain macb interrupt
 - phy-mode: See ethernet.txt file in the same directory.
 - clock-names: Tuple listing input clock names.
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
