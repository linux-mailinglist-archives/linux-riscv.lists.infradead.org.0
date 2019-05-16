Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC111FEB3
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 07:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ht6UxbZozuMOUlQ2JjtgV15HcyjQyUHwlkDfQYfQb2o=; b=RCsTOWWXejLx81
	A0gOd+qG4OH4RCgt0sCGJkajyQVo/Yzo0GY4ojqkkWaPoNuc14KGk4CUIxMPwgVEAa0VYaMfWeC0l
	v6uaoF3vVR9p2mfm/xTDplYWxdvm7KPPo5eusfiMhaifkQQtRqWG7DHdVWVIF1VD80B/HgLnJo3h7
	NuboJZqvrtOTxxfQUyjqKcqno2WOafEwBGe0EhrtglCt0QxGIk6HsX9De6C15YTltXpJILLF4KxOB
	FxKF6TpSoiCQHrpKhAvgdfndfChdXjIvariMoMXgUmD3cAOUOfVFJJnXMeHzGF93Oy3sc4vq1y6Pi
	fbXhUfhyRTP/Asnw2B/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR8e7-0006Bq-Lo; Thu, 16 May 2019 05:09:35 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR8e4-0006BV-3M
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 05:09:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so942866pgb.3
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 22:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=bw14u18P9i//6PFBBpNeMD35DBcnBuJpaE6hMWzLBZ0=;
 b=JMBjAjqj9Bt/mtPeNVVFnwrG6sxggttpsGf3yrrSUASc87Irj9E9jhvOrZ6OxSc4pm
 3oweA6sqM0iqogIExq9o+Er5Wtj62ppqTiDzoyWk95Ebb4+W5do0a66GqvVBiL6cNBFL
 2OkBNVSw3s+rYw7I92PJ9orjWwAsPwsq0GPBRAqP1uhxgPUIIqbi+wqRsSxiBhrnkEax
 b2gLSylHqEuhL3gzcj5Jt5t1XEE7luk6bwfSx9J6nOtyU6y0TMiBtG5r1R8FzkL0b6D3
 qj4K7GsCIs9w3K+ZDiz3Tv3At8nVqFuTHKCo0hltnNFFBDX/F+BP0LISx4mPRlEtLmC7
 /sDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=bw14u18P9i//6PFBBpNeMD35DBcnBuJpaE6hMWzLBZ0=;
 b=TOoejppxJEvfjcN5LWkOsR0pO8qjGS0l04XE60gsQ+QUN4USYVoMn/+wHH91VLe2w2
 IFoAUiO3ZPCc8Yj3ukzT9RNJdxjX4gFUhklefw20uvtF/wxSbEPBVkGic1A+mIPFNalg
 d12qVl3bpDgb7CBfyMSikFSRC9yoLQjC4JDgNB+75VCkpskTzhSeyb8Zej5MGrjWsqdx
 MJAPPZyDBxJ8xmuFvosbN4cLRZXnTRuUBMKElykQRMHQntCWR5vPPcyY/zTHbhPISjAA
 U10ynOJ9l6spcD0r+1QqNKTvksfa0wZOeqVpm7ic7IEt7rCCxIQDVPyfDYnneQ5HbG6X
 UkOQ==
X-Gm-Message-State: APjAAAXmefY1cMmno0IYlj3wh1dT1sUqFsU4c0fyHwV15624rQO2G6Rc
 VPy1cnnrCw3B/rWg24e+tinL+A==
X-Google-Smtp-Source: APXvYqyY6RdF/VL9iKR+Dn640qMh2T+dCAVMBAhbWxEWLJANF3ujtebGYHqiEGcZX5ca2hsGtxbCWg==
X-Received: by 2002:a62:e718:: with SMTP id s24mr51969126pfh.247.1557983371371; 
 Wed, 15 May 2019 22:09:31 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id u6sm5929531pfa.1.2019.05.15.22.09.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 May 2019 22:09:30 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: i2c: extend existing opencore bindings.
Date: Thu, 16 May 2019 10:38:38 +0530
Message-Id: <1557983320-14461-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
References: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_220932_139630_31EAF1F0 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add FU540-C000 specific device tree bindings to already
available i2-ocores file. This device is available on
HiFive Unleashed Rev A00 board. Move interrupt and interrupt
parents under optional property list as these can be optional.

The FU540-C000 SoC from sifive, has an Opencore's I2C block
reimplementation.

The DT compatibility string for this IP is present in HDL and available at.
https://github.com/sifive/sifive-blocks/blob/master/src/main/scala/devices/i2c/I2C.scala#L73

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
index 17bef9a..b73960e 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
@@ -2,8 +2,11 @@ Device tree configuration for i2c-ocores
 
 Required properties:
 - compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
+                    "sifive,fu540-c000-i2c" or "sifive,i2c0".
+		    for Opencore based I2C IP block reimplemented in
+		    FU540-C000 SoC.Please refer sifive-blocks-ip-versioning.txt
+		    for additional details.
 - reg             : bus address start and address range size of device
-- interrupts      : interrupt number
 - clocks          : handle to the controller clock; see the note below.
                     Mutually exclusive with opencores,ip-clock-frequency
 - opencores,ip-clock-frequency: frequency of the controller clock in Hz;
@@ -12,6 +15,8 @@ Required properties:
 - #size-cells     : should be <0>
 
 Optional properties:
+- interrupt-parent: handle to interrupt controller.
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
