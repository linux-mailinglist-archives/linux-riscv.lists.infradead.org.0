Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F3DF29D6
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 09:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SciYZ/WKlV+O35auAfvLWbx7AMO1R6eNo1IZ/ci2f7k=; b=Mj4Efls7HPrZkk6AbAeKjnqmXV
	sQayECapQpn4OwX9rtRsv/TjEk29bZ/OX/0kYrpBPlvarmQPVHcezUP15gTgFbXtNVf3vNTznQWTV
	L2SXHT3jw3bUU1gay6L/XTBDrwhiw/idaBu85isWGKqVQ9tzWYRvsqaNpaSjys9ZuhAZWGS2trXD0
	t/17B57VCsrhj4zulwGp9xE2gncM1PwdrU+MVOgjOGnQuhduadpK6HapPdFe5wwOQOtr0U8nw/gZC
	wLSf/1kq5spfKy6jRN2yBKuqpY/qO9Mo4LEPL5JFZU4u40EPH+qQLEYmstYtnElJEztNTL73fcV38
	q/THzJmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdXg-0006Vy-L0; Thu, 07 Nov 2019 08:53:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdXd-0006Vg-Qv
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 08:53:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id r4so2121738pfl.7
 for <linux-riscv@lists.infradead.org>; Thu, 07 Nov 2019 00:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
 b=Nf9DBQGuiPv+DM370AIy9xr6rpoQTSkVEgQIjOjzF27ommG1tr9FxySdRD8FhsNjNH
 ag+mnLngc3Jagt6yR26vyv0BzdjXJ+24xdnO/Q4eFGlFMZOYgO7urSdkfRK1ndlofOAK
 lcepW1ADDTvPU5uyralgOwXE7UWiuZikY4+Onzim+MJWJ7lEl0TH9/6iLgbtMWMvdRZo
 9pKJu/admijRQcr1C2a8ycejgE396VPhIhplbgEb77lkcivKsrC6u2MNH9EAVZriy4uT
 Ll+IQr8zv8sfrHVPPHx5vAntlpIPhzvQp+S1oomn4RjbE6gy9Sv2Hz+HS2DRgRZNqG+L
 tSVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
 b=gBKd8utZxKHhEwQHts68rsQ2Po9Q4hvIVp+XMi+0k+bz1zjDhOeR0c3WlUHAnRHIiU
 gFp+KW4jWPPN6sqBxdBOSl21PPvIno7YJqlLFaaHsWr7UV75mcl8GuJ/zkMEEz3wQPDU
 Pqb6T1iXA26oIzdE7M9b33T27o0QlzegTncxLKOUAdHaWMLGeksM+4uovOA85SFA07Zu
 snORASt0/KWPUnVXFrUvTqwD2OiQ0E6k4Cydntu7Y6O2NMmnBaJ0nWj37c8UYqlYcBpG
 +8S7x3L5Tl6UmZ9QGprcK09NUE1fJCCoTjZSacekPMep0ZwekMvS7h+fANmEm7FAK90I
 AMew==
X-Gm-Message-State: APjAAAUoK0Ip8zPR3/2NgmLooxIKPYBd2lUbQtl8g7rKmDjJgmu0Nap8
 uzDimC9Maisucpc2bRlv7In12w==
X-Google-Smtp-Source: APXvYqwjonCLe6lKUq8m5TTtxhcWb55hteTieYRwORhrcDOmYcewk+My9YdyJjeoZwrBij17ZnLBQA==
X-Received: by 2002:a63:cf45:: with SMTP id b5mr3072879pgj.36.1573116801206;
 Thu, 07 Nov 2019 00:53:21 -0800 (PST)
Received: from localhost.localdomain (36-228-119-18.dynamic-ip.hinet.net.
 [36.228.119.18])
 by smtp.gmail.com with ESMTPSA id a33sm2402361pgb.57.2019.11.07.00.53.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 00:53:20 -0800 (PST)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v6 2/4] riscv: dts: add support for PDMA device of HiFive
 Unleashed Rev A00
Date: Thu,  7 Nov 2019 16:49:20 +0800
Message-Id: <20191107084955.7580-3-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107084955.7580-1-green.wan@sifive.com>
References: <20191107084955.7580-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005321_871466_1B7742AD 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Yash Shah <yash.shah@sifive.com>, Green Wan <green.wan@sifive.com>,
 Bin Meng <bmeng.cn@gmail.com>, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, linux-riscv@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add PDMA support to (arch/riscv/boot/dts/sifive/fu540-c000.dtsi)

Signed-off-by: Green Wan <green.wan@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index afa43c7ea369..70a1891e7cd0 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -162,6 +162,13 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			status = "disabled";
 		};
+		dma: dma@3000000 {
+			compatible = "sifive,fu540-c000-pdma";
+			reg = <0x0 0x3000000 0x0 0x8000>;
+			interrupt-parent = <&plic0>;
+			interrupts = <23 24 25 26 27 28 29 30>;
+			#dma-cells = <1>;
+		};
 		uart1: serial@10011000 {
 			compatible = "sifive,fu540-c000-uart", "sifive,uart0";
 			reg = <0x0 0x10011000 0x0 0x1000>;
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
