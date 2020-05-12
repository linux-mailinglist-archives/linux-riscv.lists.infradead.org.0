Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCA71CFFBB
	for <lists+linux-riscv@lfdr.de>; Tue, 12 May 2020 22:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bZ3SlC6IjAo3rRznak2yB2vjG0WklLB9HsgMaXr/3G8=; b=Cw/jNpgh0CMV32
	3VV1Ty2WR4QndWHVvtFAtNbi87uAxBCgrV/wDvNTDUFJA9K6jm1zNJmSA1Dlqlr7ZXPERtXhSAQTd
	6I/d/Qx8zc6canCfHzyazoYL1J7pRmrFF7BFG2+s8Ctd418hkM60Y9wE297i932kOSci1aZlcUpkd
	exAqPDHBiNs5dODZSSDSiYPwbhW9gETzpMr4V5xb3s47dDq3IQUEC0ag8+eNtcWXxkkNdZO9uzXr+
	DaEHejbhg0wzM0mz347KqTis6lsv+HbBV4BvQOKAbAa9u9ZsQsstY1GDeRux929dze4L5tmzJ17p9
	aBwTWXDp0CrigPWzJ4vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbmf-0006u0-25; Tue, 12 May 2020 20:45:49 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbmc-0006tS-B7
 for linux-riscv@lists.infradead.org; Tue, 12 May 2020 20:45:47 +0000
Received: by mail-oi1-f194.google.com with SMTP id 19so19472637oiy.8
 for <linux-riscv@lists.infradead.org>; Tue, 12 May 2020 13:45:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bZ3SlC6IjAo3rRznak2yB2vjG0WklLB9HsgMaXr/3G8=;
 b=UlnktmsWs6kLAJOmOa/OoeysQ8Ux8r8u+GBZs4QT0akEGqbX+zqN2c3kwimN46xqs+
 IL6XrVQqn/IUYoy5uSSjaldghnaTtbV2QUdvxmzfXiHji4PD/Ak6ZRo2NZjycvVpWXnG
 ff4G/xh63MwwaA4ad68bifgbESj4sTdrZvKxdfDA3kjYcSz2KOeS6jrFRCPsNCSbh49u
 NfOzoDA33rj+Zj/ZnFJB8VBYNGr7r6EpXNFFAYz+zDoDm6oOTIAMzpV4bGCMP5FhheOR
 VVlCjQ8UWE049uT9uabcyrZXq8gjLzhTiwfm1f73PfK2iSvTqu1ozCEDsyE2LRuHjo13
 q66w==
X-Gm-Message-State: AGi0PuZdNxWI52gSRUwZArso4ztIcgu72/U48LRxyLJhXnY3/pyhSxvY
 mztWcZe5+gsPs36wa95Qfw==
X-Google-Smtp-Source: APiQypKV6dUHk4u2TZZM9pj4FNgtVQv7pL7PiPyGyXG2CpXKT8zCVpKHis+rnBPSF2vegPnG8W7f6g==
X-Received: by 2002:aca:488c:: with SMTP id
 v134mr12366530oia.103.1589316344975; 
 Tue, 12 May 2020 13:45:44 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id k8sm3943792ood.24.2020.05.12.13.45.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 13:45:44 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 1/5] spi: dt-bindings: sifive: Add missing 2nd register region
Date: Tue, 12 May 2020 15:45:39 -0500
Message-Id: <20200512204543.22090-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_134546_379108_8AB9CD21 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The 'reg' description and example have a 2nd register region for memory
mapped flash, but the schema says there is only 1 region. Fix this.

Cc: Mark Brown <broonie@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: linux-spi@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
Please ack, dependency for patch 5.

 Documentation/devicetree/bindings/spi/spi-sifive.yaml | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-sifive.yaml b/Documentation/devicetree/bindings/spi/spi-sifive.yaml
index 28040598bfae..fb583e57c1f2 100644
--- a/Documentation/devicetree/bindings/spi/spi-sifive.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-sifive.yaml
@@ -32,11 +32,10 @@ properties:
       https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/spi
 
   reg:
-    maxItems: 1
-
-    description:
-      Physical base address and size of SPI registers map
-      A second (optional) range can indicate memory mapped flash
+    minItems: 1
+    items:
+      - description: SPI registers region
+      - description: Memory mapped flash region
 
   interrupts:
     maxItems: 1
-- 
2.20.1


