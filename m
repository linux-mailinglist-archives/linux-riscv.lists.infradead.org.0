Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C2B2D4B9
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 06:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zjF/bfvceiGNmEWOsGCOwmFNUv/HGVKS1RMcxLFOpI=; b=lvAXnJu1aEcluq
	1EbimMljc4yGPx7+eSSsbe65lMJakZZLCWyZGoyx3d2+5BzFTVplfAdJCkjr61vXHaKs184scT996
	j1BGn1B+ba1RW6cQ5TFDpS9xXSf1k9napptvB4uP17CG28DihHwNPQu+7olVe9QXftxuAX7xOugNb
	tq3bnTSjMrkR2IuwoGlLjZBVLYNbR9A7SK9TJZwA+21Mv/aR3BZoXS+ZzwImcnSkngA2zHwdgJzsn
	53/rOyWHYXQEVNH8pENfMaHJLi3UHtAOqcl4NPK1+PjYYiApsE5qxiRubdu1lMgU7Ue8hcQovRtq3
	QvqItj/NeYHJuaXjYnRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVqBv-0005aQ-2n; Wed, 29 May 2019 04:27:55 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVqBs-0005ZV-6I
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 04:27:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id e7so56pln.4
 for <linux-riscv@lists.infradead.org>; Tue, 28 May 2019 21:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=VetgGylyMhr4faiTsP3IkOZ01cl3HVxVutPYPa26WFw=;
 b=YCI/XvhaGPJ7TmU8ldM2Xiu7Sh5/fXXnNA9bmCOl7ZIuBAdSaQuJ0qTMrVAi6dS8cE
 hgzEQ+7nnc+Ib+oTs/kaB4+p3mIPY/UnCqH3ktfpjpZP6MIW6zJfHsZXSROcfWnemq1S
 n/FqoA91MHsRZmaLfRltVvMQsP3O0oa8SdyZH8sooMhpNBUZCeB3fiGn+1S8KdzPUbAg
 Zj+QCpCxhI25Z5dJlRhGsq/B6xN5MAtuDt6vDbncx6c4BSWKbu7qR8/ya2v7Db6rP2ht
 k5psu3BKr7qFpV4qSM5M1reCj18bPrQ0oGK8TAfPo0mWMcSUZiVT0GWeb+PTcqu/ZCO/
 kCLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=VetgGylyMhr4faiTsP3IkOZ01cl3HVxVutPYPa26WFw=;
 b=r4RiG/TFjoW915l877IueeIvD9CelEhoBiKyE/6zW+2rIRHT441Rp3yn8EKel6Zaqk
 bE0AKAuMdmM4OLAAMRZS3N20yNU7yy7qDCKkjn2Pfhk5mstRdI5JhFC/j8ohNu8s9D00
 DZRJ7mASXIQtUzmColYnv9IJGt3yVIDkYucKTB1bmvmY1WAzOC0FnhNw6vwpfXYPKaRi
 svbpL28rew9SQldCwcibyomm48I/WLI/7MdmK5HjJ/rE1IZoVinBqVUya75uFOcwzPWF
 wVapWHLPUIgBRH7J9v2+R/LlpdS3+N6dGwC7uPofUy/Wq6YFnxYN2/dEqhwaynesoGx7
 M8Pw==
X-Gm-Message-State: APjAAAXGjZZv9V8VW1ETQWzTm5psccbZ0bL3YFli977+b0oKWDJYgp3d
 nf5zqVtxk1sT6vpjnw5xfi205YROVRBpOA==
X-Google-Smtp-Source: APXvYqySQTPpfRRsC63EkVn7ZXSsmxs4VnZ/ZeJW0HreR+7K2ltwfEbu7JRhq0dcxVg0Qxrz60uPEw==
X-Received: by 2002:a17:902:aa85:: with SMTP id
 d5mr138422120plr.245.1559104071820; 
 Tue, 28 May 2019 21:27:51 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 c15sm16444591pfi.172.2019.05.28.21.27.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 21:27:51 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/3] dt-bindings: i2c: extend existing opencore bindings.
Date: Wed, 29 May 2019 09:57:25 +0530
Message-Id: <1559104047-13920-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
References: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_212752_231059_ED995E02 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Reformatted compatibility strings to one valid combination on
each line.
Add FU540-C000 specific device tree bindings to already available
i2-ocores file. This device is available on
HiFive Unleashed Rev A00 board. Move interrupt under optional
property list as this can be optional.

The FU540-C000 SoC from sifive, has an Opencore's I2C block
reimplementation.

The DT compatibility string for this IP is present in HDL and available at.
https://github.com/sifive/sifive-blocks/blob/master/src/main/scala/devices/i2c/I2C.scala#L73

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
index 17bef9a..6b25a80 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
@@ -1,9 +1,13 @@
 Device tree configuration for i2c-ocores
 
 Required properties:
-- compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
+- compatible      : "opencores,i2c-ocores"
+                    "aeroflexgaisler,i2cmst"
+                    "sifive,fu540-c000-i2c", "sifive,i2c0"
+                    For Opencore based I2C IP block reimplemented in
+                    FU540-C000 SoC. Please refer to sifive-blocks-ip-versioning.txt
+                    for additional details.
 - reg             : bus address start and address range size of device
-- interrupts      : interrupt number
 - clocks          : handle to the controller clock; see the note below.
                     Mutually exclusive with opencores,ip-clock-frequency
 - opencores,ip-clock-frequency: frequency of the controller clock in Hz;
@@ -12,6 +16,7 @@ Required properties:
 - #size-cells     : should be <0>
 
 Optional properties:
+- interrupts      : interrupt number.
 - clock-frequency : frequency of bus clock in Hz; see the note below.
                     Defaults to 100 KHz when the property is not specified
 - reg-shift       : device register offsets are shifted by this value
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
