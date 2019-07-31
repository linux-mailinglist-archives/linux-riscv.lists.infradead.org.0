Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8B07B790
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 03:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8euLNMn3DHQaQfGC8EcKvX6YefFsM2tGrSbi3QhqHs=; b=UOZIZda8bnsVsN
	P44+zcB4l/yj160d2rQB9U6VtcwVKa+dRzbNZqyOMMGNIs/8N2RkSoq79kW9qPrwh90dXMWc6/wQS
	hyAhRjCFcZX33EaKSpeY3/pI9Xoi6Xk/1/Mz4tR00VU6Bw9G+vTbpWPlQbxYoqtOZKz4zNpnaCysJ
	5+Nzu1K437qM2727NS45MbdUJ2NRJaS/3kbl5WXgR3dPe3CyBX1b3SaxNAPgsX/eD9uyqAiENSEDl
	CGpICIcqZQKqLtdxQM4KKOCOfPhkhwPpooKKIvWx3z/N8o2r+uI5iOIYI73NJj0NYknCX9gXIH9xZ
	5MW2zvjnnoYZf1m/3r+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsdML-0007z7-Jt; Wed, 31 Jul 2019 01:24:53 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsdMD-0007mr-Hl
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 01:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564536285; x=1596072285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vmXuHR7SC+aN09FeHOdioG1YLL/XU2JJ+5WuI+zCHk8=;
 b=SfxmmP5V0s5yTQ0qaOXtFKTNnTic2ZqLQjWGRu//JLD9v28cFqrSSQor
 kaIdUxeJETZSP+15qrybbGyCEbeVXkPz0//LOAmW3XYjfOudGCDjHheOh
 62VeUcwXfw1R/1aGmoNaa+prZvpdD1lOGgKue1Fy2/DAs+TkChK88sYRQ
 j/VCnr6VJFTPL57OBuj29OoRFFcCLyPsZpkxCVBQ+qkLcgsJp/2tJ28Kv
 nZXXzMiI4bTVokckJvlLEV5GI97fnsPVYbwLXLNUqZCHcssRsS0dl8Q12
 T3dLtglvYUkvhdDvSuNsrvNLZ7J5rKeZhPX2AwSSVqBvdUMZnb6kzfRN6 g==;
IronPort-SDR: 7Mxho65xPoY77OxhUwGjWkZUS7E8oZfhKo6Kg86z20CaaOvaReJ29EHyujE61kMXvrw/cONmzQ
 cdcegmlQz/79bEsUjBBkQBXJKy6r2m3aqjZyB8JmDxSrPhiEnJVjLhzd8/MPz5je7XuHtACOvs
 qEF2fjXi73QZvGODduze4N0qohe0wwvckpoKcacWabJlsJkCY+Im5taAFwRwEc4XKE/4h/CXD5
 ViRZDxZCgaCVkbD3Tqg57fZE6ugCnCG0F5Drrp/fCzr+4UN178LjPSgddYCFB2t7AhHDMcxnKk
 Ilw=
X-IronPort-AV: E=Sophos;i="5.64,328,1559491200"; d="scan'208";a="119218140"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 09:24:38 +0800
IronPort-SDR: MBY1xm5PpuQ4Vr5VTqvvzOKcpspxUbLqK+kjuOmPUGcQX5P+WZP07NlGHuae+baXdFSdK/tCl6
 r7/qKzCGQAirl9VJKDen0Dl1LaZzyRYycPgM2lYr6c0AyELpRJyy7O8UTQzvR+Y9PIp3YsNT81
 yTBSt86o2h5JifDRd2XrBm+IwRnAlF/it5U2AJ7Ci/ZYGx7CT2OUTarft1ABG7wYO57qoB+KQe
 vneYt0+EoiOEgJ+2L5tXjqXUILc1M7PohrQXDby2TtC7vq8kfrfH9LUIMwnxQgNhvfccfsCiTz
 DRhzRu8GAzyXN9s7uHK63Wz9
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 30 Jul 2019 18:22:39 -0700
IronPort-SDR: 54+vnEozrIPP/nGlxcV+NuLLZU4AoXI0bIuVPynL3QuKqnp94GO5rpklzJg4DTr8I6zGhqFLWA
 s1C7Da89ocDa2IAbOOQ3jgYUnykvwd3LzNd0V+BkgTZzUWpTEMqbUHLKpBUCxiib818L/vev0j
 wbVbx4ymaAW+A5LC0e/aj0ba/NOFHW84E9vjETkBd5411ZeP8Yiiw3CeeF8i29a9ZQVFwodlz/
 +K0/YuGGe4kngYCmTUa2VRURvS1FWjQoJ3ZcmhQl0Gq6bhwAh2v0ypiE6FOwm7P+ZdODR6Zyx3
 uAE=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 Jul 2019 18:24:38 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/5] dt-bindings: Update the isa string description
Date: Tue, 30 Jul 2019 18:24:18 -0700
Message-Id: <20190731012418.24565-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190731012418.24565-1-atish.patra@wdc.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_182445_706988_E86673FB 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The yaml documentation description of isa strings section doesn't
specify anything about the case sensitiveness of the isa strings.
The RISC-V specification clearly specifies it to be case insensitive.
However, Linux kernel supports only lower case isa strings.

Update the yaml documentation accordingly to avoid any confusion.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index c899111aa5e3..e22a2b7ebafa 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -46,10 +46,14 @@ properties:
           - rv64imafdc
     description:
       Identifies the specific RISC-V instruction set architecture
-      supported by the hart.  These are documented in the RISC-V
+      supported by the hart. These are documented in the RISC-V
       User-Level ISA document, available from
       https://riscv.org/specifications/
 
+      Linux kernel only supports lower case isa strings. Thus,
+      isa strings must be specified in lower case in device tree
+      as well.
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
