Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0E825FF6
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 11:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyW4ZihCSVw7Eheaj3XSaffKJXHSqwmAlTB1yJzsLRA=; b=GPu/2bVLtdLkNk
	r1gWeX+UdBWbcvIusU/KuVBzDxMhBX2Q5vjAqpPt5jKOYkEcn2gKS9vXHLrHFySec5p+Lb9pxrr9X
	qGMY50WOQTwJPI3mRrwDAhTnGEQINr/YVshBguo351OAUQuLxAPD5dGp7geXDo00qnGPvFX1tIMYk
	pk5SRbnZHKzJK0A4KjRmPyq29lvLQoVp1G+1609uztEBhpn0z0EoZ7bhP/uq610jeHLpv2YUUUr6w
	CMueajGvJLYenvxX2nNpbIBtObszMnLMmsOg4JuM+ElN50cNmhCgoZpzCKnL2fwTRjXuMg4uFYApV
	+zFu/zfACOGnxDRai2+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTN6p-0002qg-O4; Wed, 22 May 2019 09:00:27 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTN6k-0002pf-N5
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 09:00:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id g9so965591pfo.11
 for <linux-riscv@lists.infradead.org>; Wed, 22 May 2019 02:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=M/dXEAziti11+FvXEXzwN3m+bojHGjlx1XnERvN29LU=;
 b=co4p2RLqrxuL8lSUuID/P22fcyaxeRRgB3URvx4DJ20nD6KJz9f+2uZy+xsa++EQFh
 ywIqthdr1stLYsdfRIFZU6Ne3OTXKtQQ0v2Z7hg9aoMZErhvoYokU6LsOLkm2itAiANY
 PHUxSEUrI0hpBIWQn+QK0Y2/jnqO6s25sg1sNmUCzsrFAt3E/21dSjYfunx/m8Vimajk
 ThS3nNY5+nkcs29TYnN2I/1ac2SeZ1UmoXJFmrghMmNJrIi8McJgAOxQ78sC4NA8eD72
 nWs+H/lQTasqBOocE+IUBJoY0HSBQ3vrYKz5ml5DgOvpV9NcGCZeQXIeVE460IzJErbi
 HjAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=M/dXEAziti11+FvXEXzwN3m+bojHGjlx1XnERvN29LU=;
 b=Z2eDHniqYYoFCQdEOBirnPt03/3XZtIpo4SmxS+WLu6Pce2rgzi3VC3O+natgAFMAy
 hjwfmUMm5LvA6TA0Un1yqzDqobQxzXPtao3mCz/r9T8Mzgbyf7vOlHN/l0KKoN873oR9
 W7sLrgQmY2B2wD0PumBzbkQbqaDfKXOu5aO+jeorkxRcpbZvOvHIKq1rxAiAZSwMPg85
 hl0B+oVQvRuMxE2V8hbWzRppNUyrJwTGXJlFlYXF5u71YvmJG42eIYt9KEJm3asGpBH8
 /Q3aQbPwdOJ0nzfRboosuKPOk8yG378NYyl1MBEfK5k9+NIepi3DM7SgQ17785heGRCE
 TV0Q==
X-Gm-Message-State: APjAAAXA6XTBNd6Vep16y3IP63YfhEz7F8iulU8fS1u4sKdWQDQHZAj5
 H0nkCuBG2UzbwH9sGX+vT1//QA==
X-Google-Smtp-Source: APXvYqycp6Q2qsp5lrcfut8xaYp5vitvUL2aApTymSt6rk/UtSFVxOYK6EKnpNc3Q0KGbC8bq2zvcQ==
X-Received: by 2002:a65:6450:: with SMTP id s16mr1908023pgv.414.1558515621798; 
 Wed, 22 May 2019 02:00:21 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id z6sm42465905pfr.135.2019.05.22.02.00.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 22 May 2019 02:00:21 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/3] dt-bindings: i2c: extend existing opencore bindings.
Date: Wed, 22 May 2019 14:29:32 +0530
Message-Id: <1558515574-11155-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
References: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_020022_757218_026D0918 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 17bef9a..db96951 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
@@ -1,9 +1,13 @@
 Device tree configuration for i2c-ocores
 
 Required properties:
-- compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
+- compatible      : "opencores,i2c-ocores",
+                    "aeroflexgaisler,i2cmst",
+                    "sifive,fu540-c000-i2c","sifive,i2c0".
+                    For Opencore based I2C IP block reimplemented in
+                    FU540-C000 SoC.Please refer sifive-blocks-ip-versioning.txt
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
