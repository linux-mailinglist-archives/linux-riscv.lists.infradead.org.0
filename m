Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A60F0AE0
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 01:07:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RGAfFCkbb6UxeqIGf1l0hbleyeiSWv8EFEhm3s7vXmQ=; b=bZCJzZDIeSViTd
	CCeNgxWUp8N/x48Wwhs8ZIdmAq+GgTMMys2VaT10Ndsnta+hhLdGWij5h+Nozoio/Ryu44Zu+6Bx5
	0WgVLMURU7DdpPwSVtQeNVpkyG8RmQwfrvvakL/jqVceerZKz6qaHkmSmnSfEQyVnKtN1ZH/j+L2d
	VYUPSaltjvlC8PEGZLMMJkrjHYdAs7Tc7UXfi0ERccdgJfZdi/8hkMSq6d/5uHAWdiVVPfPdO3VhS
	gMb6hl3eJYZjga40N7N7cZ4kGvp6N27z2yfnrGkRKvRS+MS6kjkk5E8noLhr90XAYQVE6x8rODwvn
	aqBm3/ykX2zShnVMumjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8qm-0006NE-4A; Wed, 06 Nov 2019 00:07:04 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8qi-0006M3-AO
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 00:07:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1572998821; x=1604534821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9+9EDzlFDTNp9/Z8GOSoCt1TUGGrH1xywpXlR2HtQmI=;
 b=Xwl1dzUY4KgEBbuzUWKut/WjISLX5uk/zy2CZ3kidzVW3H0xm/utU4oo
 KE7q1masVHTUCmuJmZmNv1K2vDTV661opxwOWq69KDS3S5JqDY8XqLJDC
 By7hA2EpZGhfg1EIapVXvyspQllXmWrmAFPPWWVs1xHu12qFScRICDn9w
 0w6ArJh9ABk5luH+DzZhq+4+oGUXAATO359HRokwNSc5ox5JZ/zz/84tn
 +yy6xZ8LVBI8njN4DT4hC33AzxdVoB8U1YmdSv5BKMNn659jRAynZiinC
 HYmsiMOrr2tpKJUIuGSXcBo1ZOazjfe6SOSxeyD0PehcWHLeSXHiEeBra A==;
IronPort-SDR: YJF3k+eXs5LWTeU0NUlZxiVQr9uoFQZjBTbri+pM5HbfxI5CF1VOzSjcMvsKvmgdeL4W31AsKc
 8lpbDJxLEOvNu3U/HBrg1VhznsGyDfG2Qt9ugw+RB72AmTXdLAS8ZR3w19hr8VNIEtgd/r53CX
 atUvNwsdK6zj54OyxMV6sEFlsbOUi1/sC63YTRqILnukySWW5SjpKYYicUDXY38dd1kNSozc7l
 TkhZ8dgyw6z+R3FWR8L1SmI/CpISFt/vtaNyMAAng3QelnJVId3dOHNVT8Vb7eoZt/AqjcT5Gs
 24I=
X-IronPort-AV: E=Sophos;i="5.68,271,1569254400"; d="scan'208";a="123838559"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 06 Nov 2019 08:06:58 +0800
IronPort-SDR: gfOn4kU/ReC6fvQJKEPvjXsp3ZdVEIkkbDE60xhQ5N0vQpOsMhQp+SWdAPB+peDJgFpiaNolG9
 FtNt0V754Docnvd4fhd6c/Fw5j+gLSnL2zOg16VPF4M/Wq5Dr4Gsq3odQJVk4h3UW9IkrKL1f7
 DiYMv06xP5hZywuXXMXJocn9StGIplfrqJhAuwVeL1Z6ZGgZIVMPKSnyvr08VZnP+6AljjgiNa
 AB3bUafO8dU9rbLrWJcRW0rPpHfZGFViczv+UR9InshhYkyhzcEQIIhmBMeP2jf3Uq7SVduAqv
 01XW9PRykQEv+gLAGeJ87jhX
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 16:02:11 -0800
IronPort-SDR: vh7cUu24VmQmVXEdKsm4LuWH9m0ZsRfp77NEUxJhWkKhEXJXYChdhjvup9hikb6x+KE2pPuAOD
 hdm7fc96/jeIBGZ7nMYyKFoNnasKxt/vmA8UB4jDiH6hxH/bRikK7uDxMrB0dpAEu0V4DV6LPi
 KXqxX/xzIJwaoUxXekMJbI1RKigPE9V3c7X6bbBdqRb4nSAf0VWGNvOXxRIcE9mDDlFN1GxAZV
 dRZn7Wg0k4jWgvEHmtZWWhfT2xYbV9NWLE46Dfy0as6J5WajHCKsJ+r6ZapH+CnkVi63SaA5G0
 cqk=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 05 Nov 2019 16:06:58 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: Add multiple compression image format.
Date: Tue,  5 Nov 2019 16:06:52 -0800
Message-Id: <20191106000652.8370-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_160700_424168_798B5534 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, there is only support for .gz compression type
for generating kernel Image.

Add support for other compression methods(lzma, lz4, lzo, bzip2)
that helps in generating a even smaller kernel image. Image.gz
will still be the default compressed image.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/boot/Makefile | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index 0990a9fdbe5d..88356650c992 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -24,6 +24,18 @@ $(obj)/Image: vmlinux FORCE
 $(obj)/Image.gz: $(obj)/Image FORCE
 	$(call if_changed,gzip)
 
+$(obj)/Image.bz2: $(obj)/Image FORCE
+	$(call if_changed,bzip2)
+
+$(obj)/Image.lz4: $(obj)/Image FORCE
+	$(call if_changed,lz4)
+
+$(obj)/Image.lzma: $(obj)/Image FORCE
+	$(call if_changed,lzma)
+
+$(obj)/Image.lzo: $(obj)/Image FORCE
+	$(call if_changed,lzo)
+
 install:
 	$(CONFIG_SHELL) $(srctree)/$(src)/install.sh $(KERNELRELEASE) \
 	$(obj)/Image System.map "$(INSTALL_PATH)"
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
