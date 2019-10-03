Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22267C9A77
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 11:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+4MX5gy/QfEAAz5iMdtJIdYJ7F85s1seI38KfTwG95k=; b=O0FFGYgi0wwfrUM7/ApH2BPC6R
	k62LwcNs2WaHLV4XvqqfEzEM051asDYBZNukmTZ1LiAQkC99DKgPAR9628EybmI8aWWzSR/l2z4No
	wASuxlD4/+1wGzPJfJJY0JaT3RKIze8KABfEG5kJLvFHBO77wmou1sQVYqTsrpESbl1bJjoUx5sNd
	Y59IkcVnWG0za9JNTqIpknBWFtrURSMmC0OYyYhOeVKcJkwJiuJokA3wiPs8DwL1j6aQg5rS6QYoj
	GNSZfAQEe6WS+c8xHWjcpX6gAKuiGNQNjc0scsUgFuwkUoqV+XZ1oP5aIjoZjppxj1pa9rG+VoGmH
	FJq6qrGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFx8Z-0001ea-Ke; Thu, 03 Oct 2019 09:11:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFx8R-0001WH-QX
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 09:10:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id c17so1377019pgg.4
 for <linux-riscv@lists.infradead.org>; Thu, 03 Oct 2019 02:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cl61NZhY5d45/Lbiju2rWHR/95fvQW/rzQHybTAnNrk=;
 b=UXdpOExk+DjqpI/3nuWER3Cht8DW7Do+r38+1fLADJv0vQ4hNM1f0Ag+4C9yGsB/VT
 zKWib8P0kpXAnS/PC2MSlK2mTflHfsCAav/ICDSntt8nvfmkm7FcYbRvA4jN0dElY8Rx
 vG2fIfbBtsHQwsEnulSya+KIj2MLK722ZMeDS0pumkvmQiozd6U/IBhEAiVNCbUinUVq
 2y5t9eWzfu6Z0i8iXDZb9OHImA8FnVb56aPXeTRguPG4FpaQGKEK5i6MUb17I84bJ9pG
 LPIw85fwBbdKx3g/sOEZDWFumMBxSOWOfJaqclkg4yt9Uj2UMNXnTap+8sb7nwmfSM86
 8cxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cl61NZhY5d45/Lbiju2rWHR/95fvQW/rzQHybTAnNrk=;
 b=EvBH/lf/++AUymCunh20akDTwHNsCHaHEs3XdlszYaa5+VMON1KBqWUGyKXF3XKyOm
 8FqGmCy7xAVDJgEWQMG6L+HgVFVxmHoYtBZEJhFW5NsEm5zZeQwg5tPEuhZS4lgVh7Q/
 2O+WRLIk3MreduXi1FqjEnMM5zItn2H3TyZcXMjkaT2ECM9AhS5DRthf8ETiYpuQVE5R
 h92ry5MHnicowWLfMgsheqPIosio+GQm6NdDRP4eMMO32ifApSY467CQPi7O+EIt8vrK
 IFCqU0XjQzfO1b+F3RbL7AFGMjwdaqB1/1oJq265Tmobv7dpV92lc+5IdPrARMZQwJXI
 Lf1Q==
X-Gm-Message-State: APjAAAWBtglzycVXuNvi3uQ+10I93NhrWcCyNR/3xjAMj1xpVju//uOV
 qSfkflL/jHjeYgv7Ed/n7Fezfg==
X-Google-Smtp-Source: APXvYqzlBZJdgGNxd7XyFiEOJlwPzViCn8Ox6kTrAJFA7m0/z333Jav775/eeVAQrCP1PSa2KM2oZA==
X-Received: by 2002:a62:e109:: with SMTP id q9mr9618993pfh.231.1570093854790; 
 Thu, 03 Oct 2019 02:10:54 -0700 (PDT)
Received: from localhost.localdomain (111-241-164-136.dynamic-ip.hinet.net.
 [111.241.164.136])
 by smtp.gmail.com with ESMTPSA id f128sm3445422pfg.143.2019.10.03.02.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 02:10:54 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: linux-hackers@sifive.com
Subject: [PATCH v4 1/4] dt-bindings: dmaengine: sf-pdma: add bindins for
 SiFive PDMA
Date: Thu,  3 Oct 2019 17:09:01 +0800
Message-Id: <20191003090945.29210-2-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003090945.29210-1-green.wan@sifive.com>
References: <20191003090945.29210-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_021055_897742_86DC7A40 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
