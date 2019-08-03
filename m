Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA2280463
	for <lists+linux-riscv@lfdr.de>; Sat,  3 Aug 2019 06:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQzrvHU5sp1Gkbwy8PNbJ7YS9F5tWAYL7vrjT1b/mh8=; b=b6HHc+ryXdBFrt
	EdMe/ZIelkrEOPzWA8T6uI8ZhiLnmg9pKODX5/zZto0SbSCeEQF5TT3V+Ci3NRHX7Xo2wUmZ5DzC4
	kOHdkiu80IJq0KiGA72EBIyJroaii3AKgkz/w6wRdB0M/Vse8qWmJDD9lUiIbQKtBgQDqK8fzLnhm
	810K0/3yp8tSic4fG4mD3KhplKIJd6M55JJ8b36iNdw9pmMa/57fNzHxInIk6Z0DUQYKsM4ohMj3Y
	X7jTQCLoNLhHivd8mMPpfol4KdBjgBDstDthV1NS9hpzKcPQANY5kGipbY5Y9lfsBT2ut7Gi05F6m
	KX+Q8eS+z7voWEUdJxmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htldt-0001qy-H0; Sat, 03 Aug 2019 04:27:41 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htldk-0001hP-7x
 for linux-riscv@lists.infradead.org; Sat, 03 Aug 2019 04:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564806452; x=1596342452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x5a25h+13vDU6pS3SVLBNKrcj2J81NhRyjpTNiIo8ng=;
 b=n7LMGrT6AzHz0bNJyLt9M6C1kOcTRvYFfohtb75N24jlC80mBG4raHAa
 bFbOzeJ11RAvSGGJef3TVgVOqrhyGFRazYkKMSKlEdHm/BSlMQAoPLhbT
 fNfenRLF8KVL3HrfAh3HUzcTTpAxl55GdOWw0FB2qIVlyMkHkLXHofa+X
 DBhHiqS6cCj1Mb7yfdTJVirSZcAAz1JG+EyVAfdVt1oLitkVvA+XWXV5s
 MHkhdkOAmxnQaG1Kkaj+I+3gkMlWoIVptiSu/w0AZIWkt5qzWp/pqlqFw
 EOVvHBN3f2KJnvCtQg15/vBxHvoU6ZmHLLHzkejjjdv7yzDE23iUQHHFX A==;
IronPort-SDR: RdFo0fLdG2Rgbj9XMhEySGL+9jUY9Fw9o2bSE89w/PGw3vI5FqTkovwh3gPlt07CqzPaxeDxYK
 1Gr76qmFUjReeSdaPMEaCbBs5KsKWSnhSb/9Lqt7NeaffBxGdQczvaQYuQMLGeLhjnS6uRMoZh
 XKFMiylLoJ5klQwREZxXAhwzsSz18VZxeEkkdBdPx0rindWtSVlw2KV+LpkL5x5Y5P0E7wVuJV
 G10csj/47CQ6EIxKOkCero0xofr6W3q5Qm4oh/V+4QRa/dlJWZXs/I6SJHGPkM7JeuzdFqrLX6
 CGQ=
X-IronPort-AV: E=Sophos;i="5.64,340,1559491200"; d="scan'208";a="119512924"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Aug 2019 12:27:25 +0800
IronPort-SDR: 9vqWEsOZ4rgtsAomjNgU1ThQjL0Yuq83pdESd+0+K1feLctLbpAJRg5kyXkfa7sonGB63IIgND
 9bvzFRaYWwRWs9DXTH2YvjqamB6Smk5XhJqHpr5RFQCRYc8khssFtaBty2Wx7iB51JDttXvTmT
 08KiU73iG42Gwxf7Z2E1LFl3henBj/lf3N1n4epQpV7+LJQFY68pq7bCZLoyOtv57yVezC/hny
 bpbB0pdNJNYMFShgUoIDYMv2sjWWFIlQF29i1ojUKV5quorN+2LIxhIXO0MAPR1vxlPbEQ1iIN
 LcernKV6/XLxMCb4+4G5LGbk
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 21:25:20 -0700
IronPort-SDR: 0v4e9VHYa72MRX66Fef5d0jSyMrlTHPpXWIRs86/yPfZHpcHR22X3GhlOA2OzfKa7o4apHV5GZ
 wh6i7v062Z6qNPcbSF1wz/WFVnSyWd1y/Q44BJ+ADtYivKFhIYgxm3TIsG6y+THA4P/gMiBOYu
 K+Nkh7TiXbvHW72yXTZfEJ98o1xSCZgB3eQfLAinXTS+0JcWtWvOAN3XJNO/jvaJEp6sL6In1d
 w+BHo1w2MxlqO8tJt1tfwagiT6Yq1HJLSgswIx4QTMOPB3qY7ZXiz8tzSmzG1KjjkVUImkeob8
 +3A=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 02 Aug 2019 21:27:26 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] dt-bindings: Update the riscv,isa string description
Date: Fri,  2 Aug 2019 21:27:23 -0700
Message-Id: <20190803042723.7163-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190803042723.7163-1-atish.patra@wdc.com>
References: <20190803042723.7163-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_212732_502589_2384DC73 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Albert Ou <aou@eecs.berkeley.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since the RISC-V specification states that ISA description strings are
case-insensitive, there's no functional difference between mixed-case,
upper-case, and lower-case ISA strings. Thus, to simplify parsing,
specify that the letters present in "riscv,isa" must be all lowercase.

Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index c899111aa5e3..9d3fe6aada2b 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -50,6 +50,10 @@ properties:
       User-Level ISA document, available from
       https://riscv.org/specifications/
 
+      While the isa strings in ISA specification are case
+      insensitive, letters in the riscv,isa string must be all
+      lowercase to simplify parsing.
+
   timebase-frequency:
     type: integer
     minimum: 1
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
