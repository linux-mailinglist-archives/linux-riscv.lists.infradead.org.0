Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27213E6DAB
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 08:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=exMtuSYsIrnj66SMaEXJaIhyt9PWafGUdQIUG3d8XiQ=; b=G69vcim9SHoeV2T0kgi3KJOjJc
	Sh6mJhxKVUbXLA+toLnUAgnKjrJxWzu/CXjoy1eYjopS7mWxhrtSZuxmrls4eIdcc4N6fbuFnanYf
	6MHq8VlecD0sE0aDWAV0XzDzO2jDqUxIcTRh8E+wOOHriFdvxRlabaIjPmMYFQ1gjG5Z+xxbI/a/c
	3u6N2MYhYr8aMOZ6WuHXtFBWq+AWxPJ/ufTwYujyIRPMIxBxagTeSC96e4ou7rIWeJcEkVmNDYlk3
	gyutrlqVizgEXVeLfHSYVCbPOg259muzWtlS1w1ZKCTiEdwaNaR7F5yO8n8p5+z+QicMhsoO/EXSE
	45RRZQYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzvA-0005i1-Po; Mon, 28 Oct 2019 07:58:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzv6-0005h9-Ms
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 07:58:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id u9so1639200pfn.4
 for <linux-riscv@lists.infradead.org>; Mon, 28 Oct 2019 00:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sLaQKTe9F/n+kmq28P+8uQ8BgB0NxQ/mf+3vugBIPOU=;
 b=CwU6l44Ck8MCNGOU0jv24uh0hpK31qPSOdqqp7NRy7xam03EzFoVx6p62/FMpjZiiY
 cZ/AXZkMXUukeVKic7nrEzC/rF1ZbkhkOMKYEBHNv7Jto0JHTBzCY4tNAhArCao5Y2w3
 KhoYTGHpZSG/QWHidVFTJ0LZzJR2r8iPEyJmvtswL7VYXUNKJBlSxurgdrdiMgM3ITOr
 dy3vR4HAWqXpX9PZqB3QL1kC1zrXNU05rGE4/rV5JCIBuHFSwGJLPFNiaE0bI4EI8260
 SI3Nip903r2N/Nq22aHxSEK60akOPL+7auB6Y+43x3xvN1K4rO1xvBGTuDTB/yj7Nlsx
 xdLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sLaQKTe9F/n+kmq28P+8uQ8BgB0NxQ/mf+3vugBIPOU=;
 b=rRMLQ/wX4nPLSfwUKEQlBfc6On+df86ZSIeLHSfA63g2pTw/pQGM3pDnnZfuI39sNB
 uR73kVNteYg90Vdamn+ZOuKG/rMBhY1YoJFOUHh5QrMmwp74gleKnsjy319E0lri42p1
 +qze1EHlcKFdw85dzPYCLUGsI3vkLZaLI6MVvqrIRtO2WwR2iwvGBy1NfzwnA2JOKKlz
 nT/sE3tSftmJ8vNRpxrqWDHjqpS1x9T7pvnps7t78XF3iTdkYupCTqjGcG8Qn6BBnvfg
 FRZaNdJAxgUkDnwuP25/bMuwrpVgZZrAPzOSP/hPC76IKPd/VeBTUy0FEWzFCOUKodCe
 GTmA==
X-Gm-Message-State: APjAAAU6dC2+s/P8N6VRC9n19YvZgrz9AzisX9wADVkOKfsQHvSvIgLi
 Qp7F/0BnS0i8+RQJrtfc/ErCNA==
X-Google-Smtp-Source: APXvYqzrDVIQTPM9eaDR25XDbHx5ZYaDusJXvaBMCN631OBtC7yMEttBxWYwLdXelIw/PQm9fSFlwg==
X-Received: by 2002:a17:90a:b946:: with SMTP id
 f6mr20395570pjw.81.1572249512044; 
 Mon, 28 Oct 2019 00:58:32 -0700 (PDT)
Received: from localhost.localdomain (111-241-170-106.dynamic-ip.hinet.net.
 [111.241.170.106])
 by smtp.gmail.com with ESMTPSA id y36sm9504752pgk.66.2019.10.28.00.58.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 00:58:31 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v5 1/4] dt-bindings: dmaengine: sf-pdma: add bindins for
 SiFive PDMA
Date: Mon, 28 Oct 2019 15:56:20 +0800
Message-Id: <20191028075658.12143-2-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028075658.12143-1-green.wan@sifive.com>
References: <20191028075658.12143-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_005832_752185_903981E0 
X-CRM114-Status: GOOD (  12.30  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Green Wan <green.wan@sifive.com>, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
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

base-commit: d6d5df1db6e9d7f8f76d2911707f7d5877251b02
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
