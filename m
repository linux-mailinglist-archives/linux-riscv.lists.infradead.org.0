Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A1C319DA
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Jun 2019 08:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zjF/bfvceiGNmEWOsGCOwmFNUv/HGVKS1RMcxLFOpI=; b=BgUajoxvlvVrNc
	r0oiCC4VWwr5iIZXpBNPr1StI3CZAEOB4IIl2vnfDMrr1Fz4Ukqs/QRjbvyegsfCuLBopxM+upMOc
	D4Aq5eDNzWNA7E2sgVvbxXampz3Qs2tPpXvlK0zFEiUu/hGufmNW9NH3WSuDSQBIaMThwiL858pBM
	kCCu39mdbEsYa6nIMWPC08rIa0NvelvnAz+nWgwoz0XGTpJLsupZTg0W4TVPL1K2tNJMmLG4Hxm09
	uQ+9VUzNmDaTHNu+LNR8COnX9+HUzyU30quXdPk57L4IzKTnS4FFpJVuII52My81cRwqeU5fh7Z6y
	+94+UdXfAtPvWRMJcH1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWxF6-000414-6F; Sat, 01 Jun 2019 06:11:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWxF2-00040g-PP
 for linux-riscv@lists.infradead.org; Sat, 01 Jun 2019 06:11:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id x10so2369640pfi.0
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 23:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=VetgGylyMhr4faiTsP3IkOZ01cl3HVxVutPYPa26WFw=;
 b=L+8y5kH6etF8yWqZIfrxPcn7SDSUmFvtroYhlOS75cnuezAp0sSlbUpeXkKAuNm1Ou
 wFCPL1ZfLHMkWp1VacPzEOrPkmrtnZuF3FYhqLvcX6TKw8TzOaiyjni5+E+j3Frwv3Fu
 D5iWxaiY92NEkpn97ZS5iARxvYS+odyy1HAZVG6KKAZiIw1e3sXQEVu0A8ER+C9sgUBF
 HjkOHgX5qAZCf2P/D5Aj9sv08mG+/lpFpQdDjbY8O/1bInXAufnz56NQzzfe9H9pmt+E
 ++63EZjeoQg5JaASocYveM+Oy1Iqgp0HuIAziuSua6dandhnhr5Bs/gvxiC7PTh4b7lg
 FRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=VetgGylyMhr4faiTsP3IkOZ01cl3HVxVutPYPa26WFw=;
 b=SJvpk2ogl5hA9f26yUV+vfPJj5qpOanzXGLLKm+TEd3nMpG6GaESkacGfXVSg28Tv3
 XiLLX8S7K3nRA7D+OZJHkXjvPjP9gBvIq47HI9G0QKk+i9Sypz/mPbxSeVOexFLFGiJ7
 4gVbIj748RbmJdQYcK7kOSBXVu0Ae9Y1xXBYmripNf+YcJvzqQVkQaRq6KA/jRL02YPN
 HK40UzCA7aHjQ1L3kNMe6O5a9LvsDxLDgci/g5/iw9nGRavo1dmF1syDO3qHBM6AtFgZ
 lo7dm3b8tIHiABBoVf0dcPXuOyQ6HTj9BV/AfnfZbtPeSHAUa7z9OVV1OiXFR5ELiwm9
 aT8g==
X-Gm-Message-State: APjAAAVqSOoIf9Q7tBGckVf7iyuLiGfdNlE32MhZbICQxi6vqT3oGwtM
 XRiYgtE4gvQE8fYJWI2SQVc8Mw==
X-Google-Smtp-Source: APXvYqxI0camTekHszKzfIocQ6nPJPXPzToe6YYixiwv9Y2EBb8cNTvjszkHyNqWOoQmKBBLTOtM0A==
X-Received: by 2002:a62:6585:: with SMTP id
 z127mr14667253pfb.179.1559369503106; 
 Fri, 31 May 2019 23:11:43 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 2sm8935850pgl.40.2019.05.31.23.11.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 23:11:42 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REPOST v8 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
Date: Sat,  1 Jun 2019 11:41:13 +0530
Message-Id: <1559369475-15374-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
References: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_231144_823858_C28FC9E0 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
