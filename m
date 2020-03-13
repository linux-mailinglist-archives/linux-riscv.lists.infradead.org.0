Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D588018438B
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOM3aEmjEqWWOAVUA5kLxhBWRDkm4mIPbH4c62vvABo=; b=IU/6PPKTU0M6v4
	nPBzc9O/xBzR3mZFrXVznJnDYnv6yggtR4oWO41fgmu/fPQcK6sDWSWjGjr37825nBKYGzrktWHDa
	6NARTcivamBB9GPyUEvB71MgaDKjGbfilnFga78q2tYamDSMW2nXvCDAPDQFqoPbi46Q2Muumm0kU
	sSo1IgGwyt87CbG+9U2dV24jrEAwee8xhxNJdtN40VUfHY/Q78MLb9tkmLiplj49aVJY7nnoT28/A
	lCiT7Ibe5cQTWneaxa3DohzT3Ts5M/PB1YnEYfuN35jd1ByaC+k4LeedU9rc7RqGSLfLamAICc/zL
	wG0pYwaXa6nQ7MIArv8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgRD-0006ZF-U8; Fri, 13 Mar 2020 09:17:03 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQw-0006IT-Oy
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091006; x=1615627006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ntv2epMPlTVdoKFDBWuow5pGs7sY9f+O3nNQNhnjiU8=;
 b=VlGg49bhN2v5G3MsYg/RVvxgGBBPZtbPqFxfMw7cFTlS1hmajLPncSmI
 5TvtMF4cUzfmF+VsvAlkCe3pUBantdMEliVpZKobcxAXDwbKFNLzMU6s2
 EQcxhYOJcZpGgocZ54EHGiCtnoirVwFkggZYzv6WBJ36/IJNJRpYVpqYb
 GF5wbFHQFo00dBWAjBBfnnOu5912UfUPa+ea9JYIuKLkXcc8EeVAoDDqW
 Ss60+e9Ti1wx9Xry7GdWoZVd3sl40/eNeTnGnzbbfXtTKeCPL89NVYf0f
 3D3F7m+X1vVQ5zfZ/h2vpfpkz6jKNnQymZUkGgP8q2VUJ4/AHQ8R8TJKF Q==;
IronPort-SDR: EERDX+TShpdi/KT71w+boZbmLyzR4wX/5qB9l04xJb3AFT2V1/uiSBbjgWG9JrJK26YvLvUlSF
 fA2z/mnSGrnuBxfsQAs5xSdvda7MfWAHFnU4MkaV9r97m6JAVrDlVLov7O6Uo9IiX0FXIpfsfL
 SKGk/Co3UUcTaY1nJ8XaPHP5G15lS4XYxAMYPr/Pi9AvP0PXSa6lg4n71JPHzU186jbZgsem7Z
 TLHOGYKCel9IrQfMPNHKYdrxcuN2ie+qcCf3wIKgbwJ5TQggOyJj2e62YZ5rNK+nkfsFQUgRXW
 Ag0=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669781"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:45 +0800
IronPort-SDR: vKzUOKykboqHtmXhXkmw9Bp1siLOyVFAB6xSwn30Qz+2fSIn5VERKvYG40uBa+XzbhUOxcgYPE
 MlyL2eYqncKAby2moadhWH431Gov1koHcGz8v8LHILBtIUia6LV0LgYtgCXHvOJ9+xAAvArEsn
 eVSoaOx67QO2QG1r/7bf3IKaPHzZ0yX/c2+2NBHnPhVzZ5m/LI9zd+9uz5UX7D8WA9REdXhkdQ
 Ng0qsDuSiyDUfj2DvCnmSA4K6YVxr14/Bnk/j4lrUs8huh3yCG7hINCiZUrpvHoBj54Iz8Ne4s
 Pif+ogODHRrnI/wff+Mm7vFH
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:43 -0700
IronPort-SDR: AzRB4wD0RM9kRImFb2G/Q2n5Gxub/1w2H6cpUMLIC5QCc4ujFL1IbG9VjjD5+vVhE69ghKQFaj
 EGBpbcI+U3njkAWOaNSuFxvLcyGfkYNR5Uiie7sxyIOKlu91HmowhxRpu1bWY5X4Xw+Bxj9NMa
 ZbnE4FZlV6DegizS/z7m8U3ZTKNPPzG61fwPivxSFTe1SwNUUWSYLOfeA0ScprDr9t720T5e8U
 /mdBMXLcZbEDx0tmeaUkEuhIBzxgjZ1fzs5zkizXavTPU3fHRY5+YtBl/ijnrcIwj9ZMwAvSKa
 MNw=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:44 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 5/9] riscv: Select required drivers for Kendryte SOC
Date: Fri, 13 Mar 2020 18:16:35 +0900
Message-Id: <20200313091639.87862-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021646_872768_2D9DC61C 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch selects drivers required for the Kendryte K210 SOC.
Since K210 SoC based boards do not provide a device tree, this patch
also enables the BUILTIN_DTB option.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig.socs | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 69071578e181..a843100124ae 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -37,6 +37,10 @@ config SOC_VIRT
 config SOC_KENDRYTE
 	bool "Kendryte K210 SoC"
 	depends on !MMU
+	select BUILTIN_DTB
+	select SERIAL_SIFIVE if TTY
+	select SERIAL_SIFIVE_CONSOLE if TTY
+	select SIFIVE_PLIC
 	help
 	  This enables support for Kendryte K210 SoC platform hardware.
 
-- 
2.24.1


