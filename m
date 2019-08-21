Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360FF975FB
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 11:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=H3hETPCr4lpUNIQKBhXF/3hoIC17FilAUeWLPP50t1M=; b=smB
	5Y6BtbJxeFCPFhKhoGoY8G4ZjMMFSIj2+SV9C5xbyjDnU/R/QAvR8slWEsilXktxTF1w0o5eqcgeh
	BFBn0nwwe0h/ersTmW2U7celkl/52dKckTWjkqzKLST6/HlIBcArAt7rkCa2RkZeliZZsykMkVvk0
	c3QfAs+mgfHRD1X6rgn3y5Ry1Ri1We183PXVvD1wBcn93KIN5M0bnc+LpeUkASxLQX5vZ3BsF5BUf
	2BsFgMy3Wq4zmiKRlNOLLlPVVHbQfOmS+pyynZrFkpAGByCpNP6OwlFQet/nMbStlq0b1HN/sG1XT
	p0Ye/0BCRzFLH1uLHmNgnUJigRwh7Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MqY-0007Z5-Hq; Wed, 21 Aug 2019 09:24:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MqV-0007Yi-9C
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 09:24:00 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so963276pgl.11
 for <linux-riscv@lists.infradead.org>; Wed, 21 Aug 2019 02:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=WXbOIV/PPnZXH5Oc2xbiQaU6gpzCgh5LD6kBid8zVsA=;
 b=k6ZdTrjOyX6/Zkg+v/eumDTkOMoX0cDzEk/+N+cSipXCBUg5Ewl+I/0l4ynujhqCze
 N4ohG9Ii1D8knSNi6L0Ec6olYpTIHsnQTKQwMgrD0IF4x91LPIAsOqVVYi3zOqB18jbH
 wrSyWUytB6HonPktkMHa2K9hd9dELtUJrBdEsxUVFu+JhUjBkXx9RENqcp2ncHHI06Hl
 DdL7PXSKO2tu5z9HmL2agE6Ktw1i6OMSMeOFUC2L/L1JrpISjas4YAoRJNS1rjsm6+v2
 CpjdbO2zACkVLoREccR+o0Y98SummfnKh258G9S0vOkRxtpKcp6oCjOfzn6NKlCJiHAP
 NV0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WXbOIV/PPnZXH5Oc2xbiQaU6gpzCgh5LD6kBid8zVsA=;
 b=PMc0fuvR5jGb3/Gkix9kflYwYLYUJzOSJOvgMdOR7HIDLy0CfpNTJIoO5meytEaFbc
 h0rjMzlinCLcdjBSJO+E5VnocwcFZtjRa+loA/yvgKf+U2swV6D1NB60BY6R8IsLsWIi
 9JmJ5G1L/ZQ0n25qJWB+yF4buJgzcceTPiALGq9tl9LMMwv/i6qTg59Tu2EuJ4SvA2Yc
 ofJfdx7CnA3Rzne+qZ+e3H4rbAlHR8mCZ+hVppuyBIVWcr3Ynp8L9KhhminlZy2ZOySz
 cicTJ0emw/4iIpvpWg3iag0BQ3kC49zEmWeKkIr1JXBGQ4lkRJhu6t8+fPpbuKP0/Hcy
 TXRQ==
X-Gm-Message-State: APjAAAUD0+X2vqd9mNxUGXjXMdAu5X5jfO1OAi6fM3wCwMvizGyhrHZJ
 y3G+cNNJoZHTQ/J1fEUfTFEtJQ==
X-Google-Smtp-Source: APXvYqzunXgF31zpY1az1veH6ySJAQHsK32XBPJ//0IqOBTv828KbyMMDM8C1V6Iwrp5vB7Bf2/XWg==
X-Received: by 2002:a62:fb15:: with SMTP id x21mr35726157pfm.233.1566379437943; 
 Wed, 21 Aug 2019 02:23:57 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id s7sm25721327pfb.138.2019.08.21.02.23.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 21 Aug 2019 02:23:57 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	paul.walmsley@sifive.com
Subject: [PATCH] riscv: dts: Add DT support for SiFive FU540 PWM driver
Date: Wed, 21 Aug 2019 14:53:40 +0530
Message-Id: <1566379420-26762-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_022359_414135_F509F405 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, palmer@sifive.com,
 linux-kernel@vger.kernel.org, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, sagar.kadam@sifive.com,
 linux-riscv@lists.infradead.org, bmeng.cn@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the PWM DT node in SiFive FU540 soc-specific DT file.
Enable the PWM nodes in HiFive Unleashed board-specific DT file.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 19 +++++++++++++++++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  8 ++++++++
 2 files changed, 27 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 42b5ec2..bb422db 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -230,6 +230,25 @@
 			#size-cells = <0>;
 			status = "disabled";
 		};
+		pwm0: pwm@10020000 {
+			compatible = "sifive,pwm0";
+			reg = <0x0 0x10020000 0x0 0x1000>;
+			interrupt-parent = <&plic0>;
+			interrupts = <42 43 44 45>;
+			clocks = <&prci PRCI_CLK_TLCLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+		pwm1: pwm@10021000 {
+			compatible = "sifive,pwm0";
+			reg = <0x0 0x10021000 0x0 0x1000>;
+			interrupt-parent = <&plic0>;
+			interrupts = <46 47 48 49>;
+			reg-names = "control";
+			clocks = <&prci PRCI_CLK_TLCLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
 
 	};
 };
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 93d68cb..104d334 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -85,3 +85,11 @@
 		reg = <0>;
 	};
 };
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
