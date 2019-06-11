Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948363C385
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 07:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wQglA4wX0PQDEyCpAx8no3CWNh7RHCyz+iP0q9u+dhs=; b=JsFcaj/VJMT2MiZ3Uf2xJmyBhX
	2gYJL9E1FEtFn02pQjB3BGjMixAeRg/OQOVJaXjdu0rPvQjYknyeNbGYDTlwkcsxK5CLCOIgHAHDm
	nAYOD3UgOcx5r+hqKiLAyKXdoY6vJljY9QLiyfL8Dhh0dYyDs7nU0kRlJoOiYZ6BWn224zS7uYkAa
	2iEIYKUzxinh8skhv+FLfN50Onho85zPojbVzTU1b4+IdbUyugoIX/biH/7LFRESbdAhijKvVmcuz
	WIPbxSZ2sbSoWCJz697TCegDhK69cJd/Ts4yuWzWB2bSGyo6yN1sKLbVEYXE/GviznYzHqWNRwvej
	eK/UciMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZb0-0004Pa-OO; Tue, 11 Jun 2019 05:45:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZaw-0004OY-SY
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 05:45:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id c85so6696079pfc.1
 for <linux-riscv@lists.infradead.org>; Mon, 10 Jun 2019 22:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+NvS/bA472zdii99ejJQCZ5ekFJyNtU3GhsdHX2kjcM=;
 b=g69hp4WtKBXVs/W2OQRi6i7+BJJ9NA/B3UZrmnFwSIpxPOXdV+4SehL9/1NeJUiApl
 JaaOQQjCNWD+PpFRhB34XF2kPoPa/mF17bH1OZPaeGDkY+hiEQwG3OuNoQSiCxpuEl07
 pB1/dW+l1cwlC2FlB2aQL/4O6Rt2oM7V+42rmb54lxlzfZSAOPc6PyE+snhm1uXqfpTc
 11kMCPgQ2Ile4qANa1CjSNT6I68030nkwfkIdQ1+z26YVvJsmOO5Y/T5TUZFKBrC8TH7
 yATQ6MwMJ9dESxrqa9Z1tGRmeBL8dzJnlv9k1F6bPGxrhP8n5PVjUKMa0DAdkpsPhaEV
 32hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+NvS/bA472zdii99ejJQCZ5ekFJyNtU3GhsdHX2kjcM=;
 b=amZcFi6xlfi2h+jJkJl2IZybnIPMo/K40OzpbTdWdZFU+dodiUfX8dPvtBsjxy0FFQ
 WESkrQEeHTsJ+nfMza+a+hQcOR00B+hCQQhZ2FWZKThywwXCtO9BgrhJSSYKrnd4b728
 1I8zUT1ePekuJEa7KjEI4tb1nKBi+TUXyLp+9iRQAxnitQTOKmhvvJQQfrDZmim4eIjQ
 cbUfEv3VOiwVB8qoNrcMsdm7a5ZiweWheYSzkFKsz8/dujWoJafZboJQ0bKFr12Nc13G
 LNZLEhlzHg47+BiRH6WRDcQ4FoY1LHxfWAfu/+Ogce1t/Py/mHeW93Fs2kS2S5qUsFw5
 cA9w==
X-Gm-Message-State: APjAAAVdgq6nFf1uUB9qUI7IHDPAyotxweO09DdxAohsCDkmEBA02xTZ
 SsvqzeSvzy/XSA1LR2OJKIIufWNZWco=
X-Google-Smtp-Source: APXvYqy7aPHGjbrwSUE5dKDEjSmoZTsNPoob8c9BNG2BjQeSH6XN6wjbcyQNmng43AiT09d172xG7A==
X-Received: by 2002:a63:f957:: with SMTP id q23mr19080988pgk.326.1560231918364; 
 Mon, 10 Jun 2019 22:45:18 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id d35sm11609228pgm.31.2019.06.10.22.45.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 10 Jun 2019 22:45:17 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: thierry.reding@gmail.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: [PATCH v13 1/2] pwm: sifive: Add DT documentation for SiFive PWM
 Controller
Date: Tue, 11 Jun 2019 11:14:43 +0530
Message-Id: <1560231884-15694-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560231884-15694-1-git-send-email-yash.shah@sifive.com>
References: <1560231884-15694-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_224518_920252_68DA965E 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DT documentation for PWM controller added.

Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
[Atish: Compatible string update]
Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pwm/pwm-sifive.txt         | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-sifive.txt

diff --git a/Documentation/devicetree/bindings/pwm/pwm-sifive.txt b/Documentation/devicetree/bindings/pwm/pwm-sifive.txt
new file mode 100644
index 0000000..36447e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-sifive.txt
@@ -0,0 +1,33 @@
+SiFive PWM controller
+
+Unlike most other PWM controllers, the SiFive PWM controller currently only
+supports one period for all channels in the PWM. All PWMs need to run at
+the same period. The period also has significant restrictions on the values
+it can achieve, which the driver rounds to the nearest achievable period.
+PWM RTL that corresponds to the IP block version numbers can be found
+here:
+
+https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/pwm
+
+Required properties:
+- compatible: Should be "sifive,<chip>-pwm" and "sifive,pwm<version>".
+  Supported compatible strings are: "sifive,fu540-c000-pwm" for the SiFive
+  PWM v0 as integrated onto the SiFive FU540 chip, and "sifive,pwm0" for the
+  SiFive PWM v0 IP block with no chip integration tweaks.
+  Please refer to sifive-blocks-ip-versioning.txt for details.
+- reg: physical base address and length of the controller's registers
+- clocks: Should contain a clock identifier for the PWM's parent clock.
+- #pwm-cells: Should be 3. See pwm.txt in this directory
+  for a description of the cell format.
+- interrupts: one interrupt per PWM channel
+
+Examples:
+
+pwm:  pwm@10020000 {
+	compatible = "sifive,fu540-c000-pwm", "sifive,pwm0";
+	reg = <0x0 0x10020000 0x0 0x1000>;
+	clocks = <&tlclk>;
+	interrupt-parent = <&plic>;
+	interrupts = <42 43 44 45>;
+	#pwm-cells = <3>;
+};
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
