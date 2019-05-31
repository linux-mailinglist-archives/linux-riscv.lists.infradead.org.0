Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A27314BB
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 20:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zjF/bfvceiGNmEWOsGCOwmFNUv/HGVKS1RMcxLFOpI=; b=OyVP15DlCqMqCi
	q3A/Usxs1hppLROvTz4aYeCFklAYdL8T2s2H7g0wJW3Cht9KBYloWIS1eCUWNWTsxwdbV6Vq1KW7I
	Dk/HPNW6+x5N3G8hsxdUcKiGe4GFW1n79oOXkP0dRhI4SsGamVSCgIgSC0wO/LfYDrDDjv/x7hV3a
	e5th7wTDCSOus6xRwOHdfkrNNdpqxqudfp5Pvjqp/4Jq3j5kEuRhBFWfAaET3zpXLc2dzBHzqj6Xm
	31SOqFDJ5LO5mCAY1BAhDagSh2embxALTNZpXK6QhHEh7ONO8w5Q/WiUhXvL7W/+FMmPLvCCvNIVU
	ecUZdMx8bShoS4tHgyoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWmIl-0004Bf-4h; Fri, 31 May 2019 18:30:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWmIh-00049P-Ij
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 18:30:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id s11so6677786pfm.12
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 11:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=VetgGylyMhr4faiTsP3IkOZ01cl3HVxVutPYPa26WFw=;
 b=NkRCoolVMOtHRNeRX+tRMJAJfNezctylvJyewwija9EhQnV5Qv+r5qnbdxLUAq/oh3
 /h/VhrQ0ZqTZuR46enNVDaidkW13Dr+bo57VhH1ybMUAtpzPBJkunvGAuNRcKsV9x4Nd
 LGGQroOyo+oedq5OAihn50GZO1Qefg9Cmou0WGQEv8I2gyybL7y69zfDzqUGT7nRGiLi
 stw/rnbhOUajZlTipAyQt+Up8ii4ABXABDjkKz0UXNQyRcSAeMLP798IEyl98nlOFiAJ
 a5slXMoeOvW4eX1/lPGWwotNruhQFAx7MvtrHnPnU2z8CNr4WWRBvFADW9rtRD/oPb7U
 v81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=VetgGylyMhr4faiTsP3IkOZ01cl3HVxVutPYPa26WFw=;
 b=U3z5DLE+fMHlFgA7hDVVPszVfrsJAqEqVjh85qHGW6B4DDAlG/iJuZ2dcp05ykHeqV
 tFxroctmhDlH2ouJHBa69ZADLRtQRt+eOjJlbyLaAe6D8NbbCCP+kS99qUhDHXM0kjuH
 YGsU1pKY1imQ9DNE7fTYBDnIy2xGhCSKs4VTT5hbGBb8+oLNgxs9urRB6poDTTKKYJkM
 QUUoIUNTJ4ZVfVmWSeZk2JaKn7UcPrBiy6y/5umlSwD8NQ+v/RAIvxfAsjuRpx3+yY2Y
 QuaGKOKd1ejCfy9eIv+ESls5QXOfwDVQ2cF4SctAUvcr+q22052AoI+Yg44rQI5sYyOC
 4lEQ==
X-Gm-Message-State: APjAAAVEgzo2/M6FD9ORzfH2iztqHvwzr0Br9lTv4ZFnelYvWV3Xqzip
 MSAE1FAKmH8lDKsutr+AlpUFVw==
X-Google-Smtp-Source: APXvYqyGpaE3AScUpk1vPIbk/cFV7AA8MTtsbFaN4js/+qTjomIkLFrdTjiYlPE0gVCUs3hO07Rz6Q==
X-Received: by 2002:a65:450b:: with SMTP id n11mr10642993pgq.174.1559327446724; 
 Fri, 31 May 2019 11:30:46 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 85sm10039511pgb.52.2019.05.31.11.30.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 11:30:46 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REPOST v8 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
Date: Sat,  1 Jun 2019 00:00:21 +0530
Message-Id: <1559327423-13001-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559327423-13001-1-git-send-email-sagar.kadam@sifive.com>
References: <1559327423-13001-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_113047_619555_6FF00AA2 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
