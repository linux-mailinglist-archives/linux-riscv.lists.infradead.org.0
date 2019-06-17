Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023464790D
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 06:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4QK5QCOOqK8l8AHuInzo4kQf86r7ZmjPXCNesWeQdgQ=; b=Ls5dzs5xt+UU8ANj8PQYCorCsX
	niaMUhdr+I+wqwO4G/cTyEo5NHpoKQjEMqZEWK7p17C5R/MtP6d33oAx/v/THz94v+q7tJWKCy9Ew
	QLCPHD/s2Oj+xqfzb6C7XAbyCr4x93oi3+Bie5zlb56l04gZ4uEMPIxYOvRdEF/vm5gGVRasmYgLj
	EarBTrEjPwy5hWkJPFIPk8e4o0miGpxz8u42b7TGMb/Vx/zGc2J4U/hfPb2eElArHeKjMkqAxCe+E
	PNnOvVdSCY8OmljbFJTfL39BxwCejcDWp7Tf74+I3d6SS7CfdSkp9CRZxB0sp4g/KiGM/yfnKxBqK
	XXV31QkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcj7n-0005E2-Dm; Mon, 17 Jun 2019 04:20:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcj7i-0004s1-7C
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 04:20:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id l19so5004423pgh.9
 for <linux-riscv@lists.infradead.org>; Sun, 16 Jun 2019 21:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RQ7r99LglmbRJj2DFXAbmR129HoEeLSxwVPFaO0vZw4=;
 b=E1qaffNG5g19xLO4vzkHC21Vw/NF7z9+26a48uunjr0ykZXCHL1INVEF+BStNKIzmf
 MPAQJGgkKxKxGLbnOSqzwH4jhBdlJvPBNZJGMkHZFLZ6bGA5HVIw4RVESbhx5k78XAyf
 1K9TqA1WvcFlLVhLev0Qd0v5d7Rw57j/xFfGksf6VUBVYLOgerYkRgd7yYPZj8ORVRl3
 PnTwKpmkALBRMEtLQzxIvjpP06Xz8k6v2K9rPEgN33uMEilH5kQUabP/in3HOhRj7BGc
 hBRFtAS/KVcfAsNEHXi2OWg2Ps3YEqGqzrFQCRDmEIy2LDb9bE7ms4i7F8UV9x6khz1g
 2LNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RQ7r99LglmbRJj2DFXAbmR129HoEeLSxwVPFaO0vZw4=;
 b=Oiqg3dIXIye0iT+3Cf1Z0+vz8AxS/rE4b7k3EYCdeL32/yiYJgPB8SXXG7fO/wrGRu
 IqjXL6COKm2jC3QE/Az0uq2KZWeX8EjhSPaPrroOnCuFcIyysDjlIoM3gF2aEOTAu83f
 95FWD7lwMYLJLt3XJnJrXftjVAh5j9Y1Uz8LugEHLI+6L6nYc+/Bc+9v0VDDPESMtx+k
 5e0+/Gzl+DtC7pJ1q4SrApm2heB6I2N5huohkGN/E+IRSqBKThZVgovrabu+4xfjM8g2
 uMgdVDwX4cvtCza00yogR36u2X2Q9iqxeC0AdvoEL47QeIFnZY8zz5HA/AgqBOE1140B
 7ylg==
X-Gm-Message-State: APjAAAUrdCyikvEaxKpspwR2OnEl5Z+8jWxK2TdIwyHHVIvEy0oV7UMI
 O8OrYkdk6n6RzmS67YTMveg5OQ==
X-Google-Smtp-Source: APXvYqwvjjmZfDrezWanalmKfk1xhnUKnOL1Pxt4oVaR0rC4m7W+UW7/7L/oNyXvbXJxRwDupxGOdA==
X-Received: by 2002:a63:7ca:: with SMTP id 193mr46709129pgh.240.1560745201766; 
 Sun, 16 Jun 2019 21:20:01 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 e184sm14485615pfa.169.2019.06.16.21.19.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 16 Jun 2019 21:20:01 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 1/2] macb: bindings doc: add sifive fu540-c000 binding
Date: Mon, 17 Jun 2019 09:49:26 +0530
Message-Id: <1560745167-9866-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_212002_326709_A59D34D4 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 9c5e944..63c73fa 100644
--- a/Documentation/devicetree/bindings/net/macb.txt
+++ b/Documentation/devicetree/bindings/net/macb.txt
@@ -15,8 +15,11 @@ Required properties:
   Use "atmel,sama5d4-gem" for the GEM IP (10/100) available on Atmel sama5d4 SoCs.
   Use "cdns,zynq-gem" Xilinx Zynq-7xxx SoC.
   Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
+  Use "sifive,fu540-macb" for SiFive FU540-C000 SoC.
   Or the generic form: "cdns,emac".
 - reg: Address and length of the register set for the device
+	For "sifive,fu540-macb", second range is required to specify the
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
