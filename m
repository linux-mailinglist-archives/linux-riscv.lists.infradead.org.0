Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F251BD5CCE
	for <lists+linux-riscv@lfdr.de>; Mon, 14 Oct 2019 09:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Caf78Zyjz6RQZek8hKwPZYmZGXmjCHkuITwFLwX0N4M=; b=MWMWu0YxKZnoEKYKBH+kvGCK6t
	FuYwgYkiQSWetZqmZ59Wz2Wlmfl6WLw2mQ/Q+h0PvPTZToYqJt/+wrz4ZLFtF7p8QQ2praQxLaPac
	ntndwyEXQXre0oX6a8zRzR7rFNGlBvyrA3WtNGmyAIVxIESHNe5u3mtzQcLTTAg2SAeLy4S2DWsxE
	QFzAHHDZZQNMHDVd4GnlBQxdzeYWtgilVbE9c1WDis/+ZNSsHiHn401ptCUFhNnv8oFAjOc/cVWXS
	1ZvuqncfBSaaLO2LyR1Iphr0eiXcvSDUGgj5WrSdMvl9X3EAst2pAyZTJzA6S50VWOJtfMCojVCxq
	ZTVxSefQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvDU-0000nJ-JD; Mon, 14 Oct 2019 07:56:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvDQ-0000mr-R5
 for linux-riscv@lists.infradead.org; Mon, 14 Oct 2019 07:56:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so5623826pgd.11
 for <linux-riscv@lists.infradead.org>; Mon, 14 Oct 2019 00:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WYgJCjRBqhwY0ulINWDVeN12R2Tn8RH5kuZplnJEZos=;
 b=k/ju0uxLkLwtL3sDWDJCprGxKz//1GuP8ugQKBBSTurB2DBli1VodHNahR+le8ArUW
 yYf8lfdY1mdptXyuBBoTgkrfaEffPGxpLi0BdzvZHnf0u1yZ5SJ1aEXgZZk7/O1J4SVa
 h/TkRNnxxIe+X7ICYeDw457FVI5cTvQTbZiCrqjOKPBIehiaTcYmsz81ukHKMKjlsryz
 Q5tEOgi42uUAGhrRbuZ/5+pU0Sg1kN5kyM7PZ3IvVW3V55HIpXE+l5D3UMSno9rEmBqf
 882ynOY89OgiJ5TXj3ZlPKvpuEa0my6ehw4v7CUPu5YVMN1rmP8XKZlQ5tQVgyr+DwFL
 zwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WYgJCjRBqhwY0ulINWDVeN12R2Tn8RH5kuZplnJEZos=;
 b=aZTZDlwQA4sUhQrkvMZ2yJ0lprn3zANHYFxrY6SF9dJvGP7PICD490yMAsA+nJFcXS
 WXjspUjfDDIn3czgSOMUWxvd+Xe1QVHOWsb3z7k/skUB73y+dgTxQ6DVd2KuUIXEvMb/
 pJcKS3IrwhVQqZGUCx+FksQHQqVyOvgBg45+hRrELZWp54OqvmpIsSvUgYOCpesqGJXr
 qnegQrYbb7aOJVoHBHKtpuErwxzBG6zC3CYK1WdUL8ClEdzFXZ8YuZrKmrPyT4cdjsTF
 ZnK/VDNjO8V1ZJ28siBHmzXKKS48uW1AyHObkPKY368WLVZ4fRovuUcL0GfOLrKERIh0
 AyLQ==
X-Gm-Message-State: APjAAAWu/fw0z+1yf4QrVH2qZ6PO3KvhTk2o9vLrN00uj/YaEwFSQ3WK
 CfKLXhOShMbZL0XhUiiMM1JJjw==
X-Google-Smtp-Source: APXvYqz6tFVkfmFOz7LA+7Ptn1VlaJiPkif2QscBsinQM/p+ODS5CXWKT7Oydfmx35z0zZZjIf7slw==
X-Received: by 2002:aa7:8a97:: with SMTP id a23mr31494124pfc.76.1571039788241; 
 Mon, 14 Oct 2019 00:56:28 -0700 (PDT)
Received: from localhost.localdomain (111-241-168-233.dynamic-ip.hinet.net.
 [111.241.168.233])
 by smtp.gmail.com with ESMTPSA id j126sm16583137pfb.186.2019.10.14.00.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 00:56:27 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [RFC v2 1/4] dt-bindings: dmaengine: sf-pdma: add bindins for SiFive
 PDMA
Date: Mon, 14 Oct 2019 15:54:24 +0800
Message-Id: <20191014075502.15105-2-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191014075502.15105-1-green.wan@sifive.com>
References: <20191014075502.15105-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005628_882064_A871E2E5 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Green Wan <green.wan@sifive.com>, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-hackers@sifive.com,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, linux-riscv@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add DT bindings document for Platform DMA(PDMA) driver of board,
HiFive Unleashed Rev A00.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Pragnesh Patel <pragnesh.patel@sifive.com>
Signed-off-by: Green Wan <green.wan@sifive.com>
---
 .../bindings/dma/sifive,fu540-c000-pdma.yaml  | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml

diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
new file mode 100644
index 000000000000..2ca3ddbe1ff4
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/sifive,fu540-c000-pdma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive Unleashed Rev C000 Platform DMA
+
+maintainers:
+  - Green Wan <green.wan@sifive.com>
+  - Palmer Debbelt <palmer@sifive.com>
+  - Paul Walmsley <paul.walmsley@sifive.com>
+
+description: |
+  Platform DMA is a DMA engine of SiFive Unleashed. It supports 4
+  channels. Each channel has 2 interrupts. One is for DMA done and
+  the other is for DME error.
+
+  In different SoC, DMA could be attached to different IRQ line.
+  DT file need to be changed to meet the difference. For technical
+  doc,
+
+  https://static.dev.sifive.com/FU540-C000-v1.0.pdf
+
+properties:
+  compatible:
+    items:
+      - const: sifive,fu540-c000-pdma
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 8
+
+  '#dma-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#dma-cells'
+
+examples:
+  - |
+    dma@3000000 {
+      compatible = "sifive,fu540-c000-pdma";
+      reg = <0x0 0x3000000 0x0 0x8000>;
+      interrupts = <23 24 25 26 27 28 29 30>;
+      #dma-cells = <1>;
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
