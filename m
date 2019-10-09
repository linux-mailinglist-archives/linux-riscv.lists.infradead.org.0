Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBEFD0503
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 03:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FrvTZ1kKyvVRRR1qOYkEc3hg9fx/sFi1L6WoCerVjGc=; b=CDnyDC3HT54ngV
	9Y/Wd6z3K7MKck1FlTHISr8ntNYz8Ke+hcKXM5tE0mvDSsaf09Q8yo0g9XgGkYUhoOiYTeoqWmhGq
	Te8400fHYnE1WC0oV+57rGjCsLkzB0X8D2yuitQStL+Lz/AwTmo5JGO5HdISX0n53tbol4bh3df43
	LdgOpyclTZC0WkgHmDpEnDY4oK3xSVzEyEVKXZkYaetWNhIORnDUAkLkAC6BH6zH2vSSd24qcOM2X
	9lsIYCoWQwsiGqi5uXnh+gxzoxg9npyhX6V3tz1h1+s5xTCLM/0uBEbHLks2d/1wccfNwaDXDdw7n
	KaOOkiTvkJCGUnaaRY9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI0RW-0003eN-9m; Wed, 09 Oct 2019 01:07:06 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI0RT-0003dw-EM
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 01:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570583223; x=1602119223;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Drzoga2/qb62rG5gRYCswouIqBr/dzKl/+yVPPdGcgM=;
 b=iZhFZiwXj7FQ8rJBfDNCxyh7kmwKUAJ5bH+Cs6fT14lIXPZQxajU8v+7
 UJZIpHgjU+BlxeyOls9p977pgrcfujRaLXzV5w63AQqQjc6tg4GX3veCh
 vagpPOEiXzNuNgswLmCm2hgbSNlZ2xZ84NkvhGloLrSeegkNiGIc41Me1
 9lyulYnjULKdPdtMcKCv3aWgcu4OC0vdWhaxvJuWxOYOdb6TS3LXUrTXs
 QMUxsjX55h0tYqWSbxqy9GB/wrUlyaGP2eAGluX+9frGFHYUHhNFUWCpX
 RBdQxFjbvF65TwWA74l/GVqhkMfAM58pT8WljA9Ye2U6jzziISrirvj6Z Q==;
IronPort-SDR: 9QHElGfQI++i5CyYGnKeHeSM4RXVYa+zux+UVOObyohBePma2z42+rUBS8mDG8c/b+DCXVPZ+1
 ohZLJnbS181498mfZUBamOQL/SEN6NjnP7CF0XEWVOT3/SS/r2PY6ptahTmIRIugjExHNefkrU
 kvqjKs6IK6D1waIyoDLC4iLnvfNsQxGuqexbgXoklvZQ+qQPSNUkBGWIzcLvllIITJvBr4swpj
 eEoBP9nbIM7G02HJaE37gDtyEH1EiiT/NlOWMK6nrEK2aVCFKdt8xluPb873nY0tWRMLGHCsvZ
 2pw=
X-IronPort-AV: E=Sophos;i="5.67,273,1566835200"; d="scan'208";a="120092283"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 09 Oct 2019 09:06:58 +0800
IronPort-SDR: Qb4dru1R7sBPcflRB/aNiXDOuT7hQOSyoGLIVHthHt2K3OVLjI8rGTYYzNIVf897g0HCmtSO38
 ULedoL1+zc6bG7Lg4d6sFPW5nhaI7o1CsezzkFRSbavEvFpkP0mx6j5xjnpKkA82ygQGVqv83O
 EgzTKYpi4A3OhsIpntDFGQ9JzKwdPiBZ4FCSL+wSHG2QUzuTb12XaHPNgjIcPsgqJ1HQXslP0K
 9u5HiXP+9TOB6f5oyUX+K15sXg0i4p/7v8N7irf7rNA0m++HMS2VsVRzUoyj9barzxEtXjUtda
 EXwxviTf4ndHSnTsubpkcaM2
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 18:02:59 -0700
IronPort-SDR: WGv8QSqeoPrRU4wj9q+DsbCGhW6kDwro69+hpsH/32hMiPv+tpqPC9K76rfmXhXKkaW8uM3d08
 xkO7tt7ppZ8Sff79lVGqkdKX/if+MxfB0grUGXIYHkyd7Rlm5NeZuTy8JMnbpCS27qsFJS5/te
 5Ku7OL1c/skrw1+qmMsoUgNM/y6vrPwriBmMOhvSb1UMlW1N6JHZiEn5bUAc8f60A2F0gmYJ0I
 2VsOI9JxPfFUKgk4trI5/VjmpC7/bwXhlGF5oLc6IJyWzBekiTDR5jrC6Bfa8b09NdAt8DZlGO
 xKg=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 08 Oct 2019 18:06:59 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: Typo fixes in image header and documentation.
Date: Tue,  8 Oct 2019 18:06:37 -0700
Message-Id: <20191009010637.9955-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_180703_519068_39492720 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-doc@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Karsten Merker <merker@debian.org>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There are some typos in boot image header and riscv boot documentation.

Fix the typos.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 Documentation/riscv/boot-image-header.rst | 4 ++--
 arch/riscv/include/asm/image.h            | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/riscv/boot-image-header.rst b/Documentation/riscv/boot-image-header.rst
index 7b4d1d747585..8efb0596a33f 100644
--- a/Documentation/riscv/boot-image-header.rst
+++ b/Documentation/riscv/boot-image-header.rst
@@ -22,7 +22,7 @@ The following 64-byte header is present in decompressed Linux kernel image::
 	u64 res2 = 0;		  /* Reserved */
 	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
 	u32 magic2 = 0x56534905;  /* Magic number 2, little endian, "RSC\x05" */
-	u32 res4;		  /* Reserved for PE COFF offset */
+	u32 res3;		  /* Reserved for PE COFF offset */
 
 This header format is compliant with PE/COFF header and largely inspired from
 ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
@@ -34,7 +34,7 @@ Notes
 - This header can also be reused to support EFI stub for RISC-V in future. EFI
   specification needs PE/COFF image header in the beginning of the kernel image
   in order to load it as an EFI application. In order to support EFI stub,
-  code0 should be replaced with "MZ" magic string and res5(at offset 0x3c) should
+  code0 should be replaced with "MZ" magic string and res3(at offset 0x3c) should
   point to the rest of the PE/COFF header.
 
 - version field indicate header version number
diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
index 344db5244547..4f8061a5ac4a 100644
--- a/arch/riscv/include/asm/image.h
+++ b/arch/riscv/include/asm/image.h
@@ -42,7 +42,7 @@
  * @res2:		reserved
  * @magic:		Magic number (RISC-V specific; deprecated)
  * @magic2:		Magic number 2 (to match the ARM64 'magic' field pos)
- * @res4:		reserved (will be used for PE COFF offset)
+ * @res3:		reserved (will be used for PE COFF offset)
  *
  * The intention is for this header format to be shared between multiple
  * architectures to avoid a proliferation of image header formats.
@@ -59,7 +59,7 @@ struct riscv_image_header {
 	u64 res2;
 	u64 magic;
 	u32 magic2;
-	u32 res4;
+	u32 res3;
 };
 #endif /* __ASSEMBLY__ */
 #endif /* __ASM_IMAGE_H */
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
