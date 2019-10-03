Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BCBC9A7E
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 11:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SciYZ/WKlV+O35auAfvLWbx7AMO1R6eNo1IZ/ci2f7k=; b=oJUeneEEE9A2zUn0AHiWEbTKST
	P93WedoPp2ggJZX/2xWitM2HuWRrmSi5Z17VtXJNZZ+qv5740xLpY03kzeZIfejDd58V9edicMF7U
	vZ9UHGALIQ8pzzzlpNNezXyUd6Nw5zPOaIauY5cziLFO7UFZwEsEjwH/SlIA37khSEM7f2z0KCY+k
	FvqunFYECisksezfJzyhTWL10slBVUVPxnbkc7YSOStcNFZMdxFAXBCXkrtY7MfNUDyRsnzfsR4S3
	zvoBtepjAUumURw0dEgidif5WE2FdnxIknJVwP4oOz3WHc0xisucC+dKKynz/XeL0VmdvkZ0G52Kg
	qecDudGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFx9H-00021z-UU; Thu, 03 Oct 2019 09:11:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFx9E-00021C-C5
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 09:11:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id x10so1374103pgi.5
 for <linux-riscv@lists.infradead.org>; Thu, 03 Oct 2019 02:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
 b=HevAsWDE6tXESZ9hB7hMYosi2iHWTimzOkScFHEuxoXTl84XIQ5++hedBU/szRIUs4
 5K0/8v3y/Mm6iaanxiKp7R5+6Q18lxPysvqdsnDWLz0cNktbaXlqgR7Ssj6epHcomdyU
 N2x7vEKLpgs6L2TD8278HRm5aKqYfNqPF2LGocfmVzcwJ6qyYcZ3y1UwposELXIqJNwB
 OQEB5abpYTFkpxU7HjiV2WC2C9UqSU4ZvifIk5uhf/wix9RjzRw4mIQJXmyvqyD8uzxE
 dBqqHJsYJlLH8/tu1hNb98Pk+cCp1vy67RxpK6aQi5dp7Wj+rKNbjzxaxNI6Cj/UgRQt
 Ji7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rTp8veXsbPSlIboKUPW27VEfaouXwybhFA3W6d1O8fo=;
 b=ZvTV08Qna5EhSXUmJlj9NhdcqL+WghV30fntxANe2ai7OVZpAvPMvLTW9uf69caEST
 RKj5RPwvvqU3Xg8pA7l4A4bggjcl8ncvC7IhIonbvwI2/+gqp99CasFJOZfHAXkDAJYU
 C5ODK1zCBJkSl6cs5Jmw0XVkmHlgGsT7p+wJyNwxc+fMcZ5zb4CVZMcMhf6ZyTL/RhvD
 ZBOwzu7KcV21zvWGyf4wnWvQhXCSUueCaoQWVwxSlY4gXHBvhVbY6XmBhXx6z/7yxvS6
 UDg+y9lgTnRou3deAbbEIjamivYhaF1zAHDeGHSRo/hdVqw+SIJGu/NZ0Ku27IQtNlJs
 2vHQ==
X-Gm-Message-State: APjAAAVsADpzB0rLUpLq4IjhW1Sf4Ga2W/mq13nJfn8lDIE3L6WRM2Ma
 wPvLFkLrlctTxr+82k1vcd4sng==
X-Google-Smtp-Source: APXvYqxrCv3/XjbGCRMQu4OSNS6gWuL2ba4etoKU2ncw9nGMLIQGNAdka15S83LHd2E6DsXVjzXYSQ==
X-Received: by 2002:a62:b606:: with SMTP id j6mr10297239pff.254.1570093903662; 
 Thu, 03 Oct 2019 02:11:43 -0700 (PDT)
Received: from localhost.localdomain (111-241-164-136.dynamic-ip.hinet.net.
 [111.241.164.136])
 by smtp.gmail.com with ESMTPSA id f128sm3445422pfg.143.2019.10.03.02.11.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 02:11:43 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: linux-hackers@sifive.com
Subject: [PATCH v4 2/4] riscv: dts: add support for PDMA device of HiFive
 Unleashed Rev A00
Date: Thu,  3 Oct 2019 17:09:02 +0800
Message-Id: <20191003090945.29210-3-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003090945.29210-1-green.wan@sifive.com>
References: <20191003090945.29210-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_021144_416116_67D96F8D 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, Green Wan <green.wan@sifive.com>,
 Bin Meng <bmeng.cn@gmail.com>, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sagar Kadam <sagar.kadam@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
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
