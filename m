Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324B410F935
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 08:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LEKXIEfSlxxxr3hJTI8HKpKtueuxgcTU+xH6vnHUBI8=; b=StSsLIz2Fs0v01RPndoqRDaxW
	SGNHY3BKViwmKQmR3ZPxB1Cqx5ZsLofYRlwgI433QXPgY+FV5cwUKRQtzhpMf3uvQy+Kz8eF+VCQN
	dDC4kvFVAxNNQIgJjHJ3FCIv0+7ovDWT093++jvsImMUtbq3QGrUNYdzF6D/tgJcC+Fnv9Xdw8Kw3
	xAMDxudsjJC28B29okuJxeuapZbDtfcnpr93uWxbQvLmMlY7Fq2Bvs+Gn9SvKQxslTNM5YbHtcKhk
	mOZsrVf1ZfFdMvnqPfzNBtwXuyDXFYpXnIUSIRGVTqXJl9S0s+w4NcMZe91SdKWMNOU5cxNLSNOVV
	/JOfqE65A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2tb-0000QW-4w; Tue, 03 Dec 2019 07:46:55 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2sF-0007a1-LY; Tue, 03 Dec 2019 07:45:33 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37jKtg016012,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37jKtg016012
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:45:21 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:45:19 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 1/6] dt-bindings: clock: add bindings for RTD1619 clocks
Date: Tue, 3 Dec 2019 15:45:08 +0800
Message-ID: <20191203074513.9416-2-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203074513.9416-1-james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234531_895397_79CEB749 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org, Rob
 Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: cylee12 <cylee12@realtek.com>

Add devicetree binding for Realtek RTD1619 clocks.

Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
Signed-off-by: James Tai <james.tai@realtek.com>
---
 include/dt-bindings/clock/rtk,clock-rtd1619.h | 88 +++++++++++++++++++
 1 file changed, 88 insertions(+)
 create mode 100644 include/dt-bindings/clock/rtk,clock-rtd1619.h

diff --git a/include/dt-bindings/clock/rtk,clock-rtd1619.h b/include/dt-bindings/clock/rtk,clock-rtd1619.h
new file mode 100644
index 000000000000..497f9b914857
--- /dev/null
+++ b/include/dt-bindings/clock/rtk,clock-rtd1619.h
@@ -0,0 +1,88 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DT_BINDINGS_RTK_CLOCK_RTD1619_H
+#define __DT_BINDINGS_RTK_CLOCK_RTD1619_H
+
+#define CC_PLL_SCPU 0
+#define CC_PLL_BUS 2
+#define CC_CLK_SYS 3
+#define CC_CLK_SYS_SB2 4
+#define CC_PLL_DCSB 5
+#define CC_CLK_SYSH 6
+#define CC_PLL_DDSA 7
+#define CC_PLL_DDSB 8
+#define CC_PLL_GPU 9
+#define CC_CLK_GPU 10
+#define CC_PLL_VE1 11
+#define CC_PLL_VE2 12
+#define CC_CLK_VE1 13
+#define CC_CLK_VE2 14
+#define CC_CLK_VE3 15
+#define CC_CLK_VE2_BPU 16
+#define CC_PLL_DIF 17
+#define CC_PLL_PSAUD1A 18
+#define CC_PLL_PSAUD2A 19
+
+#define CC_CKE_MISC 33
+#define CC_CKE_PCIE0 34
+#define CC_CKE_GSPI 35
+#define CC_CKE_SDS 36
+#define CC_CKE_HDMI 37
+#define CC_CKE_LSADC 38
+#define CC_CKE_SE 39
+#define CC_CKE_CP 40
+#define CC_CKE_MD 41
+#define CC_CKE_TP 42
+#define CC_CKE_RSA 43
+#define CC_CKE_NF 44
+#define CC_CKE_EMMC 45
+#define CC_CKE_SD 46
+#define CC_CKE_SDIO_IP 47
+#define CC_CKE_MIPI 48
+#define CC_CKE_EMMC_IP 49
+#define CC_CKE_SDIO 50
+#define CC_CKE_SD_IP 51
+#define CC_CKE_CABLERX 52
+#define CC_CKE_TPB 53
+#define CC_CKE_SC1 54
+#define CC_CKE_I2C3 55
+#define CC_CKE_JPEG 56
+#define CC_CKE_SC0 57
+#define CC_CKE_HDMIRX 58
+#define CC_CKE_HSE 59
+#define CC_CKE_UR2 60
+#define CC_CKE_UR1 61
+#define CC_CKE_FAN 62
+#define CC_CKE_SATA_WRAP_SYS 63
+#define CC_CKE_SATA_WRAP_SYSH 64
+#define CC_CKE_SATA_MAC_SYSH 65
+#define CC_CKE_R2RDSC 66
+#define CC_CKE_PCIE1 67
+#define CC_CKE_I2C4 68
+#define CC_CKE_I2C5 69
+#define CC_CKE_EDP 70
+#define CC_CKE_TSIO_TRX 71
+#define CC_CKE_TVE 72
+#define CC_CKE_VO 73
+
+#define CC_CLK_MAX 74
+
+
+#define IC_CKE_CEC0 2
+#define IC_CKE_CBUSRX_SYS 3
+#define IC_CKE_CBUSTX_SYS 4
+#define IC_CKE_CBUS_SYS 5
+#define IC_CKE_CBUS_OSC 6
+#define IC_CKE_IR 7
+#define IC_CKE_UR0 8
+#define IC_CKE_I2C0 9
+#define IC_CKE_I2C1 10
+#define IC_CKE_ETN_250M 11
+#define IC_CKE_ETN_SYS 12
+#define IC_CKE_USB_DRD 13
+#define IC_CKE_USB_HOST 14
+#define IC_CKE_USB_U3_HOST 15
+#define IC_CKE_USB 16
+#define IC_CLK_MAX 17
+
+#endif /* __DT_BINDINGS_RTK_CLOCK_RTD1619_H */
+
-- 
2.24.0


